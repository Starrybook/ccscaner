class MyClass {
private:
    int secretValue;

public:
    MyClass() : secretValue(42) {}

    friend void revealSecret(MyClass& obj);
};

void revealSecret(MyClass& obj) {
    // 由于是友元函数，可以访问 MyClass 的私有成员
    std::cout << "The secret value is " << obj.secretValue << std::endl;
}
