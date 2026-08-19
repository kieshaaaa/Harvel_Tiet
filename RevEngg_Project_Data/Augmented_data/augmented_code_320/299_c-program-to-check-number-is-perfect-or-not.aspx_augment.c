/* Source: https://www.includehelp.com/c-programs/c-program-to-check-number-is-perfect-or-not.aspx */
/*C program to check nunber is perfect or not.*/

#include <stdio.h>

int main()
{
    int number, i;
    int sum_of_divisors;

    printf("Enter an integer number: ");
    scanf("%d", &number);

    sum_of_divisors = 0;
    i = 1;
    while (i < number) {
        if (number % i == 0)
            sum_of_divisors += i;
        i++;
    }

    if (sum_of_divisors == number)
        printf("%d is a perfect number.", number);
    else
        printf("%d is not a perfect number.", number);

    return 0;
}