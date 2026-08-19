/* Source: https://www.includehelp.com/c-programs/calculate-the-value-of-npr.aspx */
// C program to calculate the value of nPr

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

    int nPr = 0;

    printf("Enter the value of N: ");
    scanf("%d", &n);

    printf("Enter the value of R: ");
    scanf("%d", &r);

    nPr = getFactorial(n) / getFactorial(n - r);

    printf("The nPr is: %d\n", nPr);

    return 0;
}
