template <typename T1, typename T2>
T2 Getmax(T1 a, T2 b)
{
    return (a > b) ? a : b;
}
template double Getmax<>(int, double); // 显式实例化
template <typename T1, typename T2>
class Pair
{
public:
    Pair(T1 first, T2 second) : first(first), second(second) {}

private:
    T1 first;
    T2 second;
};

template <class T, typename T::type n = 0>
class X; // 模板名
struct S
{
    using type = int;
};
using A = X<S>;    // OK
using B = X<S, 4>; // OK

int main()
{

    double max = Getmax(1, 2.0);
    Pair<int, double> pair1(42, 3.14);
}
