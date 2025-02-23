def create_functions():
    # 定义模板函数
    def template_function(name):
        def func():
            print(f"Hello from {name}!")
        return func

    # 批量创建函数
    for i in range(3):
        func_name = f"func_{i}"
        globals()[func_name] = template_function(func_name)

# 调用函数创建器
create_functions()

# 调用动态创建的函数
func_0()  # 输出: Hello from func_0!
func_1()  # 输出: Hello from func_1!
func_2()  # 输出: Hello from func_2!