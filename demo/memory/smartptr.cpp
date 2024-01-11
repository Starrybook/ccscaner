#include <iostream>
#include <memory>

class MyClass {
public:
    MyClass() {
        std::cout << "MyClass constructed" << std::endl;
    }

    ~MyClass() {
        std::cout << "MyClass destroyed" << std::endl;
    }

    void classMethod() {
        std::cout << "MyClass method called" << std::endl;
    }
};

int main() {
    // 使用智能指针管理 MyClass 对象
    std::unique_ptr<MyClass> ptr(new MyClass());

    ptr->classMethod();

    return 0;
}
