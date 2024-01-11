#include <iostream>

#define CONCATENATE(a, b) a ## b
#define MAKE_UNIQUE_VARIABLE(base) base ## __LINE__
int main() {
    int xy = 100;
    CONCATENATE(x, y);
    int MAKE_UNIQUE_VARIABLE(uniqueVar1) = 42;
}
