/*友元函数可以是不属于任何类的非成员函数，也可以是其他类的成员函数。
友元函数可以访问当前类中的所有成员，包括 public、protected、private 属性的。
*/
#include <iostream>
class Address;
class Student
{
private:
    int secretmark;

public:
    Student(int mark) : secretmark(mark) {}
    friend void revealSecret(Student &obj);
    void showaddr(Address *addr);
};
class Address
{
private:
    std::string m_city; // 城市
public:
    Address(std::string loc) : m_city(loc) {}
    friend void Student::showaddr(Address *addr); // 将Student类中的成员函数show()声明为友元函数
};
void revealSecret(Student &obj)
{
    // 由于是友元函数，可以访问 Student 的私有成员
    int val = obj.secretmark;
}
void Student::showaddr(Address *addr)
{
    std::string loc = addr->m_city;
}
int main()
{
    Student stu(95);
    Address addr("西安");
    revealSecret(stu);
    stu.showaddr(&addr);
    return 0;
}