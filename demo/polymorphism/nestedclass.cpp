class enclose // 外围类
{
private:
    int x;
    static int s;
    class nested // 私有成员
    {
    public:
        void display() {}
    };
    nested nestedObj;
public:
    struct inner; // 前置声明可选
    struct inner  // 嵌套类，与外围类的this指针不互通
    {
        void f(int i)
        {
            s = i; // OK：可以赋值给静态 enclose::s, 非静态不行
        }
        void g(enclose *p, int i)
        {
            p->x = i; // OK：赋值给 enclose::x
        }
    };
    void accessNestedClass()
    {
        nestedObj.display();
    }
};
