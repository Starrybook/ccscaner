class MyClass
{
private:
    int value;

public:
    MyClass(int value)
    {
        this->value = value; // 使用 this 关键字来区分成员变量和参数
    }
    MyClass(const MyClass& other) {  // 使用 this 关键字来拷贝初始化
        this->value = other.value;
    }
};
// 链式调用，使代码紧凑，使得多个成员函数调用可以在同一行内连续进行。
class Calculator
{
public:
    Calculator() : result(0) {}
    Calculator &add(int value)
    {
        result += value;
        return *this;
    }
    Calculator &subtract(int value)
    {
        result -= value;
        return *this;
    }

private:
    int result;
};
int main()
{
    Calculator cal;
    cal.add(5).subtract(3).add(10);
}
