class MyClass {
private:
    int value;

public:
    MyClass(int value) {
        this->value = value; // 使用 this 关键字来区分成员变量和参数
    }

    int getValue() {
        return this->value; // 使用 this 关键字来访问成员变量
    }
};
