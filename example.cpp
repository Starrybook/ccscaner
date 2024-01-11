#include <iostream>
#include <string>
#include <thread>
#include <mutex>
#include <pthread.h>
 
thread_local unsigned int rage = 1; 
std::mutex cout_mutex;
 
void increase_rage(const std::string& thread_name)
{
    ++rage; // 在锁外修改 OK；这是线程局部变量
    std::lock_guard<std::mutex> lock(cout_mutex);
    std::cout << thread_name << " 的愤怒计数：" << rage << '\n';
}
 
int main()
{
    std::thread a(increase_rage, "a"), b(increase_rage, "b");
    std::lock_guard<std::mutex> lock(cout_mutex);
    std::cout << "main 的愤怒计数：" << rage << '\n';
    a.join();
    b.join();
}