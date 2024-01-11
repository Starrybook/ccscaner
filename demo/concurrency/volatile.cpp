/*
可以把一个非volatile int 赋给 volatile int，但是不能把非volatile对象赋给一个volatile对象。
volatile 可以修饰指针，在前或后修饰指针本身或指针指向的内容
C++中一个由volatile标识的类内对象或函数会被受限访问。用户只能用const_cast来获得对类接口的完全访问。*/
class Example
{
public:
    Example(int data) : data(data) {}
    void printData() const volatile {
        // std::cout << "Legal access: " << data << std::endl;
    }
private:
    int data;
};
int main()
{
	volatile int i = 10;
    volatile char* myVolatileStr1;
    char* volatile myVolatileStr2;
    volatile char* volatile reg;
	int a = i;
    volatile int j = a;
    Example volatileObj(42);
    volatileObj.printData();
    const Example& constRefObj = volatileObj;
    const_cast<Example&>(constRefObj).printData();
}
