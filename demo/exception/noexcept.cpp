/*noexcept既是运算符又是说明符
noexcept 运算符进行编译时检查，如果表达式不会抛出任何异常(不计算)则返回 true
noexcept 运算符显式表明函数是否会抛出异常
如果虚函数不会抛出，那么它每个覆盖的函数的所有声明（包括定义）都必须不抛出，除非覆盖函数被定义为弃置：
foo 是否声明为 noexcept 取决于 T() 是否会抛出异常*/
template <class T>
    void foo() noexcept(noexcept(T())) {}
void f() noexcept {}; 
void (*fptr1)() noexcept(false); 
void fptr2(void pfa() noexcept);  
struct B {
    virtual void g();
    virtual void h() noexcept = delete;
};
struct D: B {
    void g() noexcept;   
    void h() = delete;    
};
int main() 
{
    foo<int>(); 
    f(); 
    bool a = noexcept(f());
}
