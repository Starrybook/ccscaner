class Base {
public:
    virtual void print() final {
        // 这个函数被声明为 final，不能在派生类中被重写
    }
};

class Derived : public Base {
public:
    // 这将导致编译错误，因为 Base 类的 print 函数被声明为 final
    // void print() override {}
};
