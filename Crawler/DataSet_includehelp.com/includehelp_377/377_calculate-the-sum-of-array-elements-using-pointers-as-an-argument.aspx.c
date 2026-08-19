/* Source: https://www.includehelp.com/c-programs/calculate-the-sum-of-array-elements-using-pointers-as-an-argument.aspx */
// C program to calculate the sum of array elements
// using pointers as an argument

#include <stdio.h>

int CalculateSum(int* arrPtr, int len)
{
    int i = 0;
    int sum = 0;

    for (i = 0; i < len; i++) {
        sum = sum + *(arrPtr + i);
    }

    return sum;
}

int main()
{
    int intArr[5] = { 10, 20, 30, 40, 50 };
    int sum = 0;

    sum = CalculateSum(intArr, 5);

    printf("Sum of array elements is: %d\n", sum);

    return 0;
}
