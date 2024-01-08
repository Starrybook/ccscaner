#include <iostream>
#include <vector>
 
int main() {
    try {
        std::cout << "Throwing an integer exception...\n";
        throw 42;
    } catch (int i) {
        std::cout << " the integer exception was caught, with value: " << i << '\n';
    }
 
    try {
        std::cout << "Creating a vector of size 5... \n";
        std::vector<int> v(5);
        std::cout << "Accessing the 11th element of the vector...\n";
        std::cout << v.at(10); // vector::at() 抛出 std::out_of_range
    } catch (const std::exception& e) { // 按基类的引用捕获
        std::cout << " a standard exception was caught, with message '"
                  << e.what() << "'\n";
    }
 
}
