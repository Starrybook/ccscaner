#include <cstdarg>

void printNumbers(int count, ...)
{
    va_list args;
    va_start(args, count);
    for (int i = 0; i < count; ++i)
    {
        va_arg(args, int);
    }
    va_end(args);
}
template <typename T, typename... Args>
T sum(T first, Args... args)
{
    return first + sum(args...);
}
int main(int argc, char *argv[])
{
    printNumbers(5, 1, 2);
    return 0;
}
