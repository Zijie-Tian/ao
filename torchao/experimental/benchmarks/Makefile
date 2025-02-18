# 编译器
CXX = clang++
CC = clang

# 编译选项
CXXFLAGS = -std=c++17 -Wall -Wextra -O3

# 链接库
LDFLAGS = -lgflags -lpthread

# 目标可执行文件
TARGET = cpu_memory_bw

# 源文件
SRCS = cpu_memory_bw.cpp

# 生成的目标文件
OBJS = $(SRCS:.cpp=.o)

# 默认目标
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(LDFLAGS)

# 生成目标文件
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 清理生成的文件
clean:
	rm -f $(OBJS) $(TARGET)

# 伪目标
.PHONY: all clean
