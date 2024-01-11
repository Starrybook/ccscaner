// 定义一个 thread_local 线程期变量, thread_local 能与 static 或 extern 一同出现，它们用于调整链接
// 线程局部变量，当前线程引用的是当前局部值
// thread_local作为类成员变量时必须是static的
#include <thread>
#include <mutex>
thread_local int count = 1;
thread_local static int link_inline;
thread_local extern int link_extern;
std::mutex count_mutex;
void increase_count(const std::string &thread_name)
{
}
class A
{
public:
    thread_local static int key;
};
thread_local int A::key = 12;
int main()
{
    std::thread athread(increase_count, "a"), bthread(increase_count, "b");
    thread_local A *a;
    thread_local A *b = new A();
    athread.join();
    bthread.join();
}
