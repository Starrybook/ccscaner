
_Categories of language features in C++_

|            Category  |        Language Features        | Relative AST Node | iIllustration/Utility | Examples |
| :----: | :----------: | :---------: | :-------: | :------: |
| Template & Modular Programming | Standard Template Library (STL) ||容器（Containers）:stack、vector、set、map、priority_queue| |
| | template 范式          || 泛型编程：创建适用不同数据类型的泛型函数和类||
||lambda表达式||构造闭包：能够捕获作用域中的变量的无名函数对象||
||using namespace||命名空间控制||
||Macro宏中的##拼接||避免命名冲突，更灵活地生成代码，但容易出bug||
|  Concurrency &Multithreading   | thread_local | | 变量声明为线程存储期 |          |
||votatile||多任务共享变量、多线程并发访问变量修饰||
|       Memory Management        |析构函数~function| | 当一个对象被删除或离开其作用域时，会自动调用其析构函数进行资源回收        |          |
||Smart Pointers||shared_ptr/unique_ptr/weak_ptr<br>(通过指针释放对象可能造成内存泄漏)||
||直接初始化:T 对象 ( 实参 )||从明确的构造函数实参的集合初始化对象，无需右值复制||
|   Exception Handling  |        Try-Catch Blocks || catch 语句捕捉 try 块中抛出的特性异常（std::exception） |   |
||noexcept 说明符||noexcept 是一个函数后缀，指示该函数是否可能抛出异常，减少不必要的异常处理开销||
|Polymorphism & Overloading|Nested Class||支持嵌套类、不支持嵌套函数||
||Operator Overloading||运算符重载||
||virtual&override&final||override 指定一个虚函数覆盖另一个虚函数<br>final指定某个虚函数不能在派生类中被覆盖，或者某个类不能被派生||
||Polymorphic Type Conversion||dynamic_cast/static_cast/const_cast||
|Reference Control|using||跨类或跨空间引用成员对象||
||this||this指针指向隐式对象形参（在其上调用非静态成员函数的对象）的地址||
||friend友元声明||允许类的非公有成员被一个类或者函数访问||
|Function|可变参数||int main (int argc, char \*argv[ ]) { 函数体 }<br>变长实参（...）||
|Type System|typedef||允许用户自定义类型别名，增强代码可读性||
||union||共用体类型提高内存利用率||
||decltype||泛型编程：创建模板时易于获得表达式类型||
||using||创建类型别名，增加代码可读性||
||votatile||提醒编译器该变量易变，无需优化，系统总是重新从它所在的内存读取数据||
||constexpr||指定变量或函数的值可以在常量表达式中出现，减少重复计算||
---

https://guyutongxue.gitee.io/cppref/zh/cpp/language.html
