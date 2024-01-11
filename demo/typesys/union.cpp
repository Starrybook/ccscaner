union MyUnion {
    std::int32_t n;     // 占用 4 字节
    std::uint16_t s[2]; // 占用 4 字节
    std::uint8_t c;     // 占用 1 字节
};
struct S
{
    enum{CHAR, INT, DOUBLE} tag;
    union
    {
        char c;
        int i;
        double d;
    };
};
union PeopleInfo {
    struct {
        int employeeId;
    } regularEmployee;
    struct {
        int contractorId;
    } contractor;
};
int main() {
    MyUnion u = {0x12345678};
    u.s[0] = 0x0011;   //u.n也被改变
    S s = {S::CHAR, 'a'};
    PeopleInfo people;
    people.regularEmployee.employeeId = 10034;
    people.contractor.contractorId = 2435;
    return 0;
}
