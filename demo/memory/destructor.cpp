#include <iostream>

class MyClass {
public:
    // 构造函数
    MyClass() {
        std::cout << "Object is being created" << std::endl;
    }

    // 析构函数
    ~MyClass() {
        std::cout << "Object is being deleted" << std::endl;
    }
};

int main() {
    MyClass obj;

    return 0;
}
