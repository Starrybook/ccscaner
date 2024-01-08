#include <iostream>

// 定义一个宏，用于连接两个参数
#define CONCATENATE(a, b) a ## b

int main() {
    int xy = 100;
    // 使用宏连接两个参数
    std::cout << "The value of xy is " << CONCATENATE(x, y) << std::endl;
}
