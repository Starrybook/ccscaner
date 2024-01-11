struct A
{
    int i;
    A(int i) : i(i)
    {
    }
    ~A()
    {
    }
};
class Base
{
public:
    virtual ~Base() {}
};
class Derived : public Base
{
    ~Derived() {}
};

int main()
{
    {
        A a(2);
    }
    Base *b = new Derived;
    delete b; // 安全
    return 0;
}
