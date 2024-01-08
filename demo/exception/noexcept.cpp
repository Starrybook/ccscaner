// foo 是否声明为 noexcept 取决于 T() 是否会抛出异常
template <class T>
    void foo() noexcept(noexcept(T())) {}
 
void bar() noexcept(true) {}
void baz() noexcept { throw 42; }  // noexcept 等同于 noexcept(true)
 
int main() 
{
    foo<int>(); // noexcept(noexcept(int())) => noexcept(true)，所以这是可以的
 
    bar(); // 可以
    baz(); // 能编译，但会在运行时调用 std::terminate
}
