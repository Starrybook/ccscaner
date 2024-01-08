#include <iostream>
#include <vector>

// 使用 using 关键字定义别名
using Vec = std::vector<int>;

int main() {
    Vec v = {1, 2, 3, 4, 5};

    for (const auto& i : v) {
        std::cout << i << " ";
    }

    return 0;
}
