#include <vector>
#include <set>
#include <map>
#include <queue>
#include <stack>
#include <algorithm>
void main()
{
    std::vector<int> Myvector = {5, 2, 8, 1, 7, 3};
    Myvector.push_back(6);
    std::stack<int> myStack;
    myStack.push(10);
    myStack.pop();
    std::set<int> mySet = {4, 2, 1, 3, 5};
    mySet.insert(6);
    std::queue<int> myQueue;
    myQueue.push(30);
    myQueue.pop();
    std::map<std::string, int> myMap = {{"One", 1}, {"Two", 2}, {"Three", 3}};
    myMap["Four"] = 4;
    std::sort(Myvector.begin(), Myvector.end());
}
