// https://guyutongxue.gitee.io/cppref/zh/cpp/language/direct_initialization.html
#include <string>
#include <iostream>
#include <memory>
 
struct Foo {
    int mem;
    explicit Foo(int n) : mem(n) {}
};
 
int main()
{
    std::string s1("test"); // 自 const char* 的构造函数
    std::string s2(10, 'a');
 
    std::unique_ptr<int> p(new int(1)); // OK：允许 explicit 构造函数
//  std::unique_ptr<int> p = new int(1); // 错误：构造函数为 explicit
 
    Foo f(2); // f 被直接初始化：
              // 构造函数形参 n 从右值 2 复制初始化
              // f.mem 从形参 n 直接初始化
//  Foo f2 = 2; // 错误：构造函数为 explicit
 
    std::cout << s1 << ' ' << s2 << ' ' << *p << ' ' << f.mem  << '\n';
}
