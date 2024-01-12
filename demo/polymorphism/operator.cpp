/*运算符 -下列运算符之一： + - * / % ^ & | ~ ! = < > += -= *= /= %= ^= &= |= << >> >>= <<= == != <= >= <=> (C++20 起) && || ++ -- , ->* -> ( ) [ ]*/
#include <iostream>
class Complex
{
private:
    double real;
    double imag;

public:
    Complex(double a, double b) : real(a), imag(b) {}
    Complex operator+(const Complex &other) const
    {
        Complex result(0, 0);
        result.real = real + other.real;
        result.imag = imag + other.imag;
        return result;
    }
    friend std::ostream &operator<<(std::ostream &os, const Complex &complex)
    {
        os << "X: " << complex.real << ", Y: " << complex.imag;
        return os;
    }
    double operator()(double x) const
    {
        return real * x + imag;
    }
};
struct X
{
    X &operator++() // 前缀自增 ++oprand
    {
        // 实际上的自增在此进行
        return *this; // 以引用返回新值
    }
    X operator++(int) // 后缀自增oprand++
    {
        X old = *this; // 复制旧值
        operator++();  // 前缀自增
        return old;    // 返回旧值
    }
};
int main()
{
    Complex cplx(3.14, 4.3);
    std::cout << "Class details: " << cplx << std::endl; // Calls the overloaded '<<' operator
    double res = cplx(0);
    return 0;
}
