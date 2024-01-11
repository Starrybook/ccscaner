#include <iostream>
// 使用 constexpr 定义一个编译时常量, constexpr修饰函数时只能有一个return语句,且视为内联函数
constexpr int Getlen(int a, int b)
{
    return a + b;
}
constexpr int factorial(int n)
{
    return n <= 1 ? 1 : (n * factorial(n - 1));
}
template <typename T>
constexpr T dispaly(T t)
{
    return t;
}
class Myclass
{
public:
    int d1, d2;
    constexpr Myclass(int num1, int num2) : d1(num1), d2(num2) {}
};
int main()
{
    int arr1[Getlen(2, 3)]; // 在编译时计算
    constexpr int len = 1 + 2 + 3;
    char arr2[len];
    constexpr Myclass t1(1, 2);
    constexpr int ret = dispaly(10);
    return 0;
}
