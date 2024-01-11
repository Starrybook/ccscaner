namespace A
{
    void g();
}

namespace X
{
    using A::g; // A::g 现在作为 ::X::g 可见
}
class B
{protected:
    int m; // B::m 是受保护的
};
class D : B {
    using B::m; // D::m 是公开的
};
void h()
{
    X::g(); // 调用 A::g
}