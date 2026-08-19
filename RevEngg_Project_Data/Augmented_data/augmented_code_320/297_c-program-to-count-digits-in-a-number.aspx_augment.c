/* Source: https://www.includehelp.com/c-programs/c-program-to-count-digits-in-a-number.aspx */
/* C program to count digits in a number.*/

#include <stdio.h>

int main()
{
    int number, tempNumber, digitCount;

    printf("Enter a number: ");
    scanf("%d", &number);

    digitCount = 0;
    tempNumber = number;

    for(; tempNumber > 0; tempNumber /= 10) {
        digitCount++;
    }

    printf("Total numbers of digits are: %d in number: %d.", digitCount, number);

    return 0;
}