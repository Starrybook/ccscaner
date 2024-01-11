#include <typeinfo>
/*检查实体的声明类型，或表达式的类型和值类别，常用于模版编程*/
template <typename T, typename U>
auto add(T t, U u) -> decltype(t + u) // 返回类型依赖于模板形参
{                                     
    return t + u;
}
int subtract(double a, int b)
{
    return a - b;
}
int main()
{
    int value = 42;
    double x = 10;
    int y = 5;
    decltype(value) anotherValue = 100;
    decltype(subtract(x, y)) subResult = subtract(x, y);
    auto addResult = add(value, subResult);
    return 0;
}
