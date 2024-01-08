union MyUnion {
    int intValue;
    float floatValue;
};

int main() {
    MyUnion u;
    u.intValue = 42;
    u.floatValue = 3.14f;
    return 0;
}
