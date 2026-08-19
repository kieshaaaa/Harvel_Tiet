/* Source: https://www.includehelp.com/c-programs/calculate-the-value-of-ncr.aspx */
// C program to calculate the value of nCr

#include <stdio.h>

int getFactorial(int num)
{
    int f = 1;
    int i = 0;

    if (num == 0)
        return 1;

    for (i = 1; i <= num; i++)
        f = f * i;

    return f;
}

int main()
{
    int n = 0;
    int r = 0;

    int nCr = 0;

    printf("Enter the value of N: ");
    scanf("%d", &n);

    printf("Enter the value of R: ");
    scanf("%d", &r);

    nCr = getFactorial(n) / (getFactorial(r) * getFactorial(n - r));

    printf("The nCr is: %d\n", nCr);

    return 0;
}
