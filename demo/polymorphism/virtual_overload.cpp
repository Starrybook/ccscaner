#include <iostream>

class Base {
public:
    virtual void print() {
        std::cout << "Base class print function" << std::endl;
    }
};

class Derived : public Base {
public:
    // 重写基类的 print 函数
    void print() override {
        std::cout << "Derived class print function" << std::endl;
    }
};

int main() {
    Base* basePtr = new Derived();

    // 调用的是 Derived 类的 print 函数，而不是 Base 类的 print 函数
    basePtr->print();

    delete basePtr;

    return 0;
}
