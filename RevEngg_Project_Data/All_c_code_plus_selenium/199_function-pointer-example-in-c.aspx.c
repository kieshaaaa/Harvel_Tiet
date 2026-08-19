/* Source: https://www.includehelp.com/c-programs/function-pointer-example-in-c.aspx */
/*function pointer example in c.*/

#include <stdio.h>

//function: sum, will return sum of two
//integer numbers

int addTwoNumbers(int x, int y)
{
    return x + y;
}

int main()
{
    int a, b, sum;

    //function pointer declaration
    int (*ptr_sum)(int, int);
    //function initialisation
    ptr_sum = &addTwoNumbers;

    a = 10;
    b = 20;

    //function calling
    sum = (*ptr_sum)(a, b);

    printf("Sum is: %d\n", sum);

    return 0;
}
