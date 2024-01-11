#include <stdexcept>
void processFile(const std::string &filename)
{
}

int main()
{
    try
    {
        processFile("example.txt");
    }
    catch (const std::invalid_argument &e)
    {
    }
    catch (const std::runtime_error &e)
    {
    }
    catch (...)
    {
    }
    return 0;
}
