# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.

import glob
from io import BytesIO
import os
import shutil
import subprocess
import sys
import tarfile
import time
from datetime import datetime
from typing import Tuple

from setuptools import Extension, find_packages, setup
import urllib

current_date = datetime.now().strftime("%Y%m%d")

ROOT_DIR = os.path.dirname(__file__)
PLATFORM_LLVM_MAP = {
    # (system, processor): (llvm_version, file_suffix)
    ("Darwin", "aarch64"): ("17.0.6", "arm64-apple-darwin22.0.tar.xz"),
    ("Linux", "aarch64"): ("17.0.6", "aarch64-linux-gnu.tar.xz"),
    # ("Windows", "x86_64"): ("18.1.6", "x86_64-pc-windows-msvc.tar.xz"),
    ("Linux", "x86_64"): ("17.0.6", "x86_64-linux-gnu-ubuntu-22.04.tar.xz"),
}
MANUAL_BUILD = bool(int(os.getenv("MANUAL_BUILD", "0")))

def get_git_commit_id():
    try:
        return (
            subprocess.check_output(["git", "rev-parse", "--short", "HEAD"])
            .decode("ascii")
            .strip()
        )
    except Exception:
        return ""


def read_requirements(file_path):
    with open(file_path, "r") as file:
        return file.read().splitlines()


def read_version(file_path="version.txt"):
    with open(file_path, "r") as file:
        return file.readline().strip()


# Use Git commit ID if VERSION_SUFFIX is not set
version_suffix = os.getenv("VERSION_SUFFIX")
if version_suffix is None:
    version_suffix = f"+git{get_git_commit_id()}"

use_cpp = os.getenv("USE_CPP")

import platform

build_torchao_experimental = (
    use_cpp == "1"
    and platform.machine().startswith("arm64")
    and platform.system() == "Darwin"
)

version_prefix = read_version()
# Version is version.dev year month date if using nightlies and version if not
version = (
    f"{version_prefix}.dev{current_date}"
    if os.environ.get("TORCHAO_NIGHTLY")
    else version_prefix
)


def use_debug_mode():
    return os.getenv("DEBUG", "0") == "1"


import torch
from torch.utils.cpp_extension import (
    CUDA_HOME,
    IS_WINDOWS,
    BuildExtension,
    CppExtension,
    CUDAExtension,
)

# Constant known variables used throughout this file
cwd = os.path.abspath(os.path.curdir)
third_party_path = os.path.join(cwd, "third_party")


def get_submodule_folders():
    git_modules_path = os.path.join(cwd, ".gitmodules")
    default_modules_path = [
        os.path.join(third_party_path, name)
        for name in [
            "cutlass",
        ]
    ]
    if not os.path.exists(git_modules_path):
        return default_modules_path
    with open(git_modules_path) as f:
        return [
            os.path.join(cwd, line.split("=", 1)[1].strip())
            for line in f
            if line.strip().startswith("path")
        ]


def check_submodules():
    def check_for_files(folder, files):
        if not any(os.path.exists(os.path.join(folder, f)) for f in files):
            print("Could not find any of {} in {}".format(", ".join(files), folder))
            print("Did you run 'git submodule update --init --recursive'?")
            sys.exit(1)

    def not_exists_or_empty(folder):
        return not os.path.exists(folder) or (
            os.path.isdir(folder) and len(os.listdir(folder)) == 0
        )

    if bool(os.getenv("USE_SYSTEM_LIBS", False)):
        return
    folders = get_submodule_folders()
    # If none of the submodule folders exists, try to initialize them
    if all(not_exists_or_empty(folder) for folder in folders):
        try:
            print(" --- Trying to initialize submodules")
            start = time.time()
            subprocess.check_call(
                ["git", "submodule", "update", "--init", "--recursive"], cwd=cwd
            )
            end = time.time()
            print(f" --- Submodule initialization took {end - start:.2f} sec")
        except Exception:
            print(" --- Submodule initalization failed")
            print("Please run:\n\tgit submodule update --init --recursive")
            sys.exit(1)
    for folder in folders:
        check_for_files(
            folder,
            [
                "CMakeLists.txt",
                "Makefile",
                "setup.py",
                "LICENSE",
                "LICENSE.md",
                "LICENSE.txt",
            ],
        )


# BuildExtension is a subclass of from setuptools.command.build_ext.build_ext
class TorchAOBuildExt(BuildExtension):
    def __init__(self, *args, **kwargs) -> None:
        super().__init__(*args, **kwargs)

    def build_extensions(self):
        cmake_extensions = [
            ext for ext in self.extensions if isinstance(ext, CMakeExtension)
        ]
        other_extensions = [
            ext for ext in self.extensions if not isinstance(ext, CMakeExtension)
        ]
        for ext in cmake_extensions:
            self.build_cmake(ext)

        # Use BuildExtension to build other extensions
        self.extensions = other_extensions
        super().build_extensions()

        self.extensions = other_extensions + cmake_extensions

    #! Zijie : CMake extension can NOLY be used by torchao.experimental submodule.
    def build_cmake(self, ext):
        extdir = os.path.abspath(os.path.dirname(self.get_ext_fullpath(ext.name)))

        build_type = "Debug" if use_debug_mode() else "Release"

        from distutils.sysconfig import get_python_lib

        torch_dir = get_python_lib() + "/torch/share/cmake/Torch"

        if not os.path.exists(self.build_temp):
            os.makedirs(self.build_temp)

        ext_filename = self.get_ext_filename(ext.name)
        lib_name = os.path.basename(ext_filename)
        # print("self.build_dir : ", self.build_temp)
        # print("extdir : ", extdir)
        # print("ext_filename : ", ext_filename)

        subprocess.check_call(
            [
                "cmake",
                ext.sourcedir,
                "-DCMAKE_BUILD_TYPE=" + build_type,
                "-DTORCHAO_BUILD_EXECUTORCH_OPS=OFF",
                "-DTorch_DIR=" + torch_dir,
                "-DCMAKE_LIBRARY_OUTPUT_DIRECTORY=" + extdir,
            ],
            cwd=self.build_temp,
        )
        subprocess.check_call(["cmake", "--build", "."], cwd=self.build_temp)
        subprocess.check_call(
            [
                "mv", "libtorchao_ops_aten.dylib", lib_name
            ],
            cwd=extdir,
        )


class CMakeExtension(Extension):
    def __init__(self, name, sourcedir=""):
        Extension.__init__(self, name, sources=[])
        self.sourcedir = os.path.abspath(sourcedir)

class CustomCMakeExtension(CMakeExtension):
    def __init__(self, name, sourcedir=""):
        super().__init__(name, sourcedir)
        # 自定义生成的文件名
        self.ext_filename = os.path.join(*name.split('.')) + ".dylib"

def get_extensions():
    debug_mode = use_debug_mode()
    if debug_mode:
        print("Compiling in debug mode")

    if not torch.cuda.is_available():
        print(
            "PyTorch GPU support is not available. Skipping compilation of CUDA extensions"
        )
    if CUDA_HOME is None and torch.cuda.is_available():
        print("CUDA toolkit is not available. Skipping compilation of CUDA extensions")
        print(
            "If you'd like to compile CUDA extensions locally please install the cudatoolkit from https://anaconda.org/nvidia/cuda-toolkit"
        )

    use_cuda = torch.cuda.is_available() and CUDA_HOME is not None
    extension = CUDAExtension if use_cuda else CppExtension

    extra_link_args = []
    extra_compile_args = {
        "nvcc": [
            "-O3" if not debug_mode else "-O0",
            "-t=0",
            "-U__CUDA_NO_HALF_OPERATORS__",
            "-U__CUDA_NO_HALF_CONVERSIONS__",
            "-Wno-deprecated-declarations",
        ]
    }

    if not IS_WINDOWS:
        extra_compile_args["cxx"] = [
            "-O3" if not debug_mode else "-O0",
            "-fdiagnostics-color=always",
        ]

        if debug_mode:
            extra_compile_args["cxx"].append("-g")
            extra_compile_args["nvcc"].append("-g")
            extra_link_args.extend(["-O0", "-g"])
    else:
        extra_compile_args["cxx"] = ["/O2" if not debug_mode else "/Od", "/permissive-"]

        if debug_mode:
            extra_compile_args["cxx"].append("/ZI")
            extra_compile_args["nvcc"].append("-g")
            extra_link_args.append("/DEBUG")

    use_cutlass = False
    if use_cuda and not IS_WINDOWS:
        use_cutlass = True
        cutlass_dir = os.path.join(third_party_path, "cutlass")
        cutlass_include_dir = os.path.join(cutlass_dir, "include")
    if use_cutlass:
        extra_compile_args["nvcc"].extend(
            [
                "-DTORCHAO_USE_CUTLASS",
                "-I" + cutlass_include_dir,
            ]
        )

    this_dir = os.path.dirname(os.path.curdir)
    extensions_dir = os.path.join(this_dir, "torchao", "csrc")
    sources = list(glob.glob(os.path.join(extensions_dir, "**/*.cpp"), recursive=True))

    extensions_cuda_dir = os.path.join(extensions_dir, "cuda")
    cuda_sources = list(
        glob.glob(os.path.join(extensions_cuda_dir, "**/*.cu"), recursive=True)
    )

    if use_cuda:
        sources += cuda_sources

    ext_modules = []
    if len(sources) > 0:
        ext_modules.append(
            extension(
                "torchao._C",
                sources,
                py_limited_api=True,
                extra_compile_args=extra_compile_args,
                extra_link_args=extra_link_args,
            )
        )

    if build_torchao_experimental:
        ext_modules.append(
            CMakeExtension(
                "torchao.experimental",
                sourcedir="torchao/experimental",
            )
        )

    return ext_modules

def download_and_extract_llvm(extract_path="build"):
    """
    Downloads and extracts the specified version of LLVM for the given platform.
    Args:
        extract_path (str): The directory path where the archive will be extracted.

    Returns:
        str: The path where the LLVM archive was extracted.
    """

    llvm_version, file_suffix = PLATFORM_LLVM_MAP[get_system_info()]
    base_url = (f"https://github.com/llvm/llvm-project/releases/download/llvmorg-{llvm_version}")
    file_name = f"clang+llvm-{llvm_version}-{file_suffix}"

    download_url = f"{base_url}/{file_name}"

    # Download the file
    print(f"Downloading {file_name} from {download_url}")
    with urllib.request.urlopen(download_url) as response:
        if response.status != 200:
            raise Exception(f"Download failed with status code {response.status}")
        file_content = response.read()
    # Ensure the extract path exists
    os.makedirs(extract_path, exist_ok=True)

    # if the file already exists, remove it
    if os.path.exists(os.path.join(extract_path, file_name)):
        os.remove(os.path.join(extract_path, file_name))

    # Extract the file
    print(f"Extracting {file_name} to {extract_path}")
    with tarfile.open(fileobj=BytesIO(file_content), mode="r:xz") as tar:
        tar.extractall(path=extract_path)

    print("Download and extraction completed successfully.")
    return os.path.abspath(os.path.join(extract_path, file_name.replace(".tar.xz", "")))

def is_win() -> bool:
    """Check if is windows or not"""
    return get_system_info()[0] == "Windows"

ARCH_MAP = {
    "arm64": "aarch64",
    "AMD64": "x86_64",
    "ARM64": "aarch64",
    "x86": "x86_64",
}

def get_system_info() -> Tuple[str, str]:
    """Get OS and processor architecture"""
    system = platform.system()
    processor = platform.machine()
    processor = ARCH_MAP.get(processor, processor)
    return system, processor

def update_submodules():
    """Updates git submodules."""
    try:
        subprocess.check_call(["git", "submodule", "update", "--init", "--recursive"])
    except subprocess.CalledProcessError as error:
        raise RuntimeError("Failed to update submodules") from error

def build_tvm(llvm_config_path):
    """Configures and builds TVM."""
    os.chdir("third_party/tvm")
    if not os.path.exists("build"):
        os.makedirs("build")
    os.chdir("build")
    # Copy the config.cmake as a baseline
    if not os.path.exists("config.cmake"):
        shutil.copy("../cmake/config.cmake", "config.cmake")
    # Set LLVM path and enable CUDA in config.cmake
    with open("config.cmake", "a") as config_file:
        if is_win():
            import posixpath
            llvm_config_path = llvm_config_path.replace(os.sep, posixpath.sep)
        config_file.write(f"set(USE_LLVM {llvm_config_path})\n")
    # Run CMake and make
    try:
        subprocess.check_call(["cmake", ".."])
        if is_win():
            subprocess.check_call(["cmake", "--build", ".", "--config", "Release"])
        else:
            subprocess.check_call(["make", "-j16"])
    except subprocess.CalledProcessError as error:
        raise RuntimeError("Failed to build TVM") from error
    finally:
        # Go back to the original directory
        os.chdir("../../..")

def setup_llvm_for_tvm():
    """Downloads and extracts LLVM, then configures TVM to use it."""
    # Assume the download_and_extract_llvm function and its dependencies are defined elsewhere in this script
    extract_path = download_and_extract_llvm()
    llvm_config_path = os.path.join(extract_path, "bin", "llvm-config")
    return extract_path, llvm_config_path

#> Zijie: This is the main function to build the TVM package with local LLVM.
def build_tvm_with_local_llvm():
    """Builds TVM with the specified version of LLVM."""
    llvm_path, llvm_config_path = setup_llvm_for_tvm()
    build_tvm(llvm_config_path)


check_submodules()      #> Zijie: Check if the submodules are correctly UPDATED.

build_tvm_with_local_llvm()  #> Zijie: Build the TVM package with local LLVM.

setup(
    name="torchao",
    version=version + version_suffix,
    packages=find_packages(),
    include_package_data=True,
    package_data={
        "torchao.kernel.configs": ["*.pkl"],
    },
    ext_modules=get_extensions() if use_cpp != "0" else None,
    extras_require={"dev": read_requirements("dev-requirements.txt")},
    description="Package for applying ao techniques to GPU models",
    long_description=open("README.md").read(),
    long_description_content_type="text/markdown",
    url="https://github.com/pytorch/ao",
    cmdclass={"build_ext": TorchAOBuildExt},
    options={"bdist_wheel": {"py_limited_api": "cp39"}},
)
