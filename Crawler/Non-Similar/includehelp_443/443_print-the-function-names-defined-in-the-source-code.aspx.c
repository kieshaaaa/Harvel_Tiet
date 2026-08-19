/* Source: https://www.includehelp.com/c-programs/print-the-function-names-defined-in-the-source-code.aspx */
// C program to print the function names
// defined in source code

#include <stdio.h>

void func1()
{
    printf("%s\n", __FUNCTION__);
}

void func2()
{
    printf("%s\n", __FUNCTION__);
}

void func3()
{
    printf("%s\n", __FUNCTION__);
}

int main()
{
    printf("Function are: \n");

    func1();
    func2();
    func3();

    printf("%s\n", __FUNCTION__);

    return 0;
}
