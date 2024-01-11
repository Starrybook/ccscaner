#include <iostream>

class MyClass {
public:
    MyClass() =default;
    MyClass(int val) : data(val) {}
    MyClass(std::string s, int val):name(s),data(val){}
    MyClass(const MyClass&a):name(a.name),data(a.data){}
private:
    int data;
    std::string name;
};
struct Point {
    int x;
    int y;
};
int main() {
    std::string s1("test");
    double d(3.14);
    int v{42};
    MyClass obj1(42);
    MyClass obj2(obj1);
    Point p = {3, 7};
    return 0;
}
