#include <iostream>
#include <cstdarg>

void printNumbers(int count, ...) {
    va_list list;
    va_start(list, count);

    for (int i = 0; i < count; ++i) {
        std::cout << va_arg(list, int) << ' ';
    }

    va_end(list);
}

int main() {
    printNumbers(5, 1, 2, 3, 4, 5);
    return 0;
}
