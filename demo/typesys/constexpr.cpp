#include <iostream>

// 使用 constexpr 定义一个编译时常量
constexpr int square(int x) {
    return x * x;
}

int main() {
    constexpr int value = square(10); // 在编译时计算
    return 0;
}
