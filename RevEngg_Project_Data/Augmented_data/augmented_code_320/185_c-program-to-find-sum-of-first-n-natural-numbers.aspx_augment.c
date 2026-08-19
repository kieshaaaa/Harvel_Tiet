/* Source: https://www.includehelp.com/c-programs/c-program-to-find-sum-of-first-n-natural-numbers.aspx */
/*C program to calculate sum of first N natural numbers.*/

#include <stdio.h>

int main()
{
    int n, counter;
    int sum;

    printf("Enter the value of N: ");
    scanf("%d", &n);

    sum = 0;
    counter = 1;

    while (counter <= n) {
        sum += counter;
        counter++;
    }

    printf("Sum is: %d\n", sum);

    return 0;
}