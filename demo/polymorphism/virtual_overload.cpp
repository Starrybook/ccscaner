#include <iostream>
class A
{
    virtual void func(); // 私有成员
public:
    void callf() { func(); } // 公开接口
};
struct B : public A
{
    void func() override{}; // 覆盖 B::func ,override声明可选
};
struct C { virtual void f(); };     // C::f 是虚函数
struct D : C { void f(); };         // D 中的 D::f 覆盖 C::f
struct E : virtual D { void f() final; }; // E 中的 E::f 覆盖 C::f, 且为最终覆盖
struct F : virtual D {}; // 最终覆盖函数是 D::f
struct G : E, F  {       //最终覆盖函数是 E::f
    using C::f; // 非函数声明，只为了能让 C::f 被查找到
};
int main()
{
    B d;
    A *bp = &d;
    bp->callf(); // 内部调用 B::func();
    G g;
    g.f();    // 虚调用 E::f
    g.C::f(); // 非虚调用 C::f
}