#include <vector>
#include <algorithm>

int main() {
    // 创建一个 std::vector 对象
    std::vector<int> numbers = {3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5};

    // 使用 std::sort 对 numbers 进行排序
    std::sort(numbers.begin(), numbers.end());

    return 0;
}
