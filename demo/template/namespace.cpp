namespace Q
{
    namespace V
    {
        void f();
    }
    void V::f() {}
    namespace V
    {
        void g();
    }
}
void Q::V::g() {}