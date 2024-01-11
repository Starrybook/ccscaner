thread_local int count = 1;
thread_local static int link_inline;
thread_local extern int link_extern;
std::mutex count_mutex;
void increase_rage(const std::string& thread_name)
{} 
class A
{
public:
    thread_local static int key; 
};
thread_local int A::key = 12;
int main()
{
    std::thread athread(increase_count, "a"), bthread(increase_count, "b");
    thread_local A* a;
    thread_local A* b = new A();
    athread.join();
    bthread.join();
}
