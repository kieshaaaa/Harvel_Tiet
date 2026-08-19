/* Source: https://www.includehelp.com/c-programs/find-the-lcm-lowest-common-multiple-of-two-integers.aspx */
// C program to find the LCM
// (Lowest Common Multiple) of two integers

#include <stdio.h>

int main()
{
    int num1 = 0;
    int num2 = 0;
    int rem = 0;
    int lcm = 0;
    int X = 0;
    int Y = 0;

    printf("Enter Number1: ");
    scanf("%d", &num1);

    printf("Enter Number2: ");
    scanf("%d", &num2);

    if (num1 > num2) {
        X = num1;
        Y = num2;
    }
    else {
        X = num2;
        Y = num1;
    }

    rem = X % Y;

    while (rem != 0) {
        X = Y;
        Y = rem;
        rem = X % Y;
    }

    lcm = num1 * num2 / Y;
    printf("Lowest Common Multiple is: %d\n", lcm);

    return 0;
}
