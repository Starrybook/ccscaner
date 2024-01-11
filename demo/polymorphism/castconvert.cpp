class Base {
public:
    virtual void print() {
        // 基类的 print 函数
    }
};

class Derived : public Base {
public:
    void print() override {
        // 派生类的 print 函数
    }
};

int main() {
    Base* basePtr = new Derived(); // 多态类型转换

    basePtr->print(); // 调用的是派生类的 print 函数

    delete basePtr;

    return 0;
}
