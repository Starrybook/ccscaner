class Base
{
public:
    virtual void func() {} // 只有多态类型才能cast
};

class Derived : public Base
{
public:
    void func() override {}
};

int main()
{
    Base *basePtr = new Derived();
    Derived *derivedPtr = dynamic_cast<Derived *>(basePtr); // dynamic_cast常用作安全向下转换
    Derived *dptr = new Derived();
    Base *bptr = static_cast<Base *>(dptr); // static_cast常用作安全向上转换
    void *p = nullptr;
    Base *b = static_cast<Base *>(p);
    void *vptr = static_cast<void *>(bptr); // static_cast能用作任意void*的转换
    double pi = 3.14159;
    int approxPi = static_cast<int>(pi);
    /*const_cast常用来去除const属性，便于修改值
    1、常量指针被转化成非常量的指针，并且仍然指向原来的对象；
    2、常量引用被转换成非常量的引用，并且仍然指向原来的对象；
    */
    const int ci = 10;
    int *nonConstPtr = const_cast<int *>(&ci);
    int &r = const_cast<int &>(ci);
    return 0;
}
