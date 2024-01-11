#include <vector>
typedef std::vector<int> IntVector;
typedef int (*OperationFunction)(int, int);
typedef char* pCHAR;
typedef double (* (* (*fp) ()) [10]) ();
typedef struct 
{
    int x;
}B;
int add(int a, int b) {
    return a + b;
}
int main() {
    OperationFunction addPtr = add;
    fp a;
    return 0;
}
