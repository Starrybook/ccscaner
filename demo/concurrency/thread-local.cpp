#include <iostream>
#include <thread>

// 定义一个 thread_local 变量
thread_local int counter = 0;

void incrementCounter() {
    ++counter;
    std::cout << "Counter: " << counter << std::endl;
}

int main() {
    // 创建两个线程，每个线程都会增加 counter 的值
    std::thread t1(incrementCounter);
    std::thread t2(incrementCounter);

    // 等待两个线程完成
    t1.join();
    t2.join();

    return 0;
}
