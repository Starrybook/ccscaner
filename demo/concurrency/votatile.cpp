#include <iostream>

int main() {
    volatile int counter = 0;

    // 增加 counter 的值
    counter++;

    std::cout << "Counter: " << counter << std::endl;

    return 0;
}
