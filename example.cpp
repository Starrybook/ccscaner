#include <iostream>

class VolatileExample {
public:
    VolatileExample(int data) : data(data) {}

    // Volatile member function representing a restricted interface
    void printData() const volatile {
        std::cout << "Legal access: " << data << std::endl;
    }

private:
    int data;
};

int main() {
    // Creating a volatile object of VolatileExample
    VolatileExample volatileObj(42);
    // Accessing the restricted interface
    volatileObj.printData();
    // Using const_cast to obtain full access to the class interface
    const VolatileExample& constRefObj = volatileObj;
    const_cast<VolatileExample&>(constRefObj).printData();

    return 0;
}
