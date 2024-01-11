#include <iostream>
#include <memory>
class MyClass
{
public:
    int data;
    MyClass() = default;
    MyClass(int value) : data(value) {}
    ~MyClass() {}
};
int main()
{
    std::shared_ptr<MyClass> sp1 = std::make_shared<MyClass>(42);
    std::shared_ptr<MyClass> sp2(new MyClass(2));
    std::shared_ptr<MyClass> sp3(sp1);
    std::unique_ptr<MyClass> up1(new MyClass);
    std::unique_ptr<std::string> up2(new std::string("Hello world!"));
    std::unique_ptr<std::string> up3(new std::string("Hello China!"));
    std::unique_ptr<int[]> up4(new int[5]);
    std::weak_ptr<MyClass> wp1;
    sp1.use_count();
    sp3->data = 1;
    up2 = std::move(up3);
    up3.reset();
    wp1 = sp1;
    std::shared_ptr<MyClass> sp4 = wp1.lock();
    return 0;
}
