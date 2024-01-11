/*lambda捕获（引用&/复制=）
[] 不截取任何变量
[&] 截取外部作用域中所有变量，并作为引用在函数体中使用
[=] 截取外部作用域中所有变量，并拷贝一份在函数体中使用
[=, &foo] 截取外部作用域中所有变量，并拷贝一份在函数体中使用，但是对foo变量使用引用
[bar] 截取bar变量并且拷贝一份在函数体重使用，同时不截取其他变量
[this] 截取当前类中的this指针。如果已经使用了&或者=就默认添加此选项。
}*/
int main()
{
    // 基础用法
    int base = 10;
    auto add = [](int a, int b)
    {
        return a + b;
    };
    auto multiply = [base](int x)
    {
        return base * x;
    };
    add(1, 2);
    multiply(5);

    // 捕获，用作判断或匹配模式
    std::vector<int> numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    auto isEven = [=](int x)
    {
        return x % 2 == 0;
    };
    auto it = std::find_if(numbers.begin(), numbers.end(), isEven);

    std::function<int(int)> recursion = [&recursion](int n)
    {
        return n < 2 ? 1 : recursion(n - 1) + recursion(n - 2);
    };
}