// // C program to check whether a given number is a Prime number or not

// // A prime number is a positive integer greater than 1 that has no positive divisors other than 1 and itself. Negative integers can't be prime because when considering their factors, the concept of primality isn't applicable in the same way.

// // Header Files
#include <stdio.h>

#include <math.h>
#include <stdlib.h>

// // Main Function Start
int main()
{

    int n, j;
    printf("\nEnter A Number to Check Whether It is Prime or Not => ");
    scanf("%d", &n);

    if (n < 1)
    {
        printf("\n!!! Invalid Input, Please Enter Positive Non-Zero Number...");
        exit(0);
    }
    else if (n == 1)
    {
        printf("1 is Neither Prime Nor Composite");
        exit(0);
    }

    if (n & 1)
    {
        j = 2;
        while (j <= sqrt(n))
        {
            if (!(n % j))
                break;
            j++;
        }
    }

    if (j > sqrt(n))
        printf("\n%d is a Prime Number", n);
    else
        printf("\n%d is Not a Prime Number", n);

    printf("\n");

    return 0;
}
// // Main Function End