using func = void (*) (int, int);
void example(int, int) {}
func f = example;

template <typename T>
using MyVector = std::vector<T>;

template <typename Key, typename Value, typename Container>
class KeyValueStore {
private:
    std::vector<std::pair<Key, Value>, Container> data;
};

template <typename T>
using MapKeyValueStore = KeyValueStore<std::string, T, std::map<std::string, T>>;
template <typename T>
using VectorKeyValueStore = KeyValueStore<int, T, std::vector<std::pair<int, T>>>;
