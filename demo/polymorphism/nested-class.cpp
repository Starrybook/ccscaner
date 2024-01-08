#include <iostream>

class OuterClass {
public:
    int x = 10;

    // 嵌套类
    class InnerClass {
    public:
        int y = 5;
    };

    InnerClass inner;
};

int main() {
    OuterClass outer;
    std::cout << "Outer x: " << outer.x << std::endl;
    std::cout << "Inner y: " << outer.inner.y << std::endl;

    return 0;
}
