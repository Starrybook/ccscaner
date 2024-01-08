class MyClass {
private:
    int value;

public:
    // 转换构造函数，可以将 int 转换为 MyClass
    MyClass(int value) : value(value) {}

    int getValue() {
        return this->value;
    }
};

int main() {
    MyClass obj = 42; // 使用转换构造函数将 int 转换为 MyClass
    return 0;
}
