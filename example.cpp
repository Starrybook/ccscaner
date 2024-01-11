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
#include <string>
#include <iostream>

class Book
{
public:
    Book() = default;
    Book(std::string s): name(s){std::cout << name << ": 1 para construstor" << std::endl;}
    Book(std::string s, int n): name(s), sum(n){std::cout << name << ": 2 paras construstor" << std::endl;}
    Book(const Book &b): name(b.name), sum(b.sum){std::cout << name << ": copy constructor" << std::endl;}
    Book & operator = (const Book &b) {
        name = b.name;
        sum = b.sum;
        std::cout << name << ": copy-assignment operator" << std::endl;
        return *this;
    }

private:
    std::string name;
    int sum;
};
