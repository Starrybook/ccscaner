#include <iostream>

class MyNumber {
public:
    int value;

    MyNumber(int v) : value(v) {}

    // 重载 + 运算符
    MyNumber operator+(const MyNumber& other) {
        return MyNumber(this->value + other.value);
    }
};

int main() {
    MyNumber num1(5);
    MyNumber num2(7);

    MyNumber sum = num1 + num2;

    std::cout << "The sum is " << sum.value << std::endl;

    return 0;
}
