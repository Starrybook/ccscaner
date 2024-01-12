class Y;
class X
{
public:
    operator char() const { return 'a'; }
    void foo(int);    // f1
    void foo(char);   // f2
    void foo(double); // f3
    void foo(X);      // f4
    void foo(Y &);    // f5
};
class Y : public X
{
};
void foo(double); // f6
void foo(int);    // f7
void bar(Y &aY)
{
    // Candidate_func={f6,f7}, Validate_func={f6,f7} best:
    // f7<cr promotion:ck std>
    foo('c');
    // Candidate_func={f6,f7},Validate_func={f6,f7} best:
    // f7 <cr user:ck user->ck std>
    foo(aY);
    // Candidate_func={f1...f5},Validate_func={f1,f2,f3} best:
    // f2 <cr std:ck ptr,cr identity:ck identity>
    aY.foo('a');
    // Candidate_func={f1...f5},Validate_func={f1...f5} best:
    // f5 <cr std:ck ptr,cr identity:ck ref bind>
    aY.foo(aY);
}