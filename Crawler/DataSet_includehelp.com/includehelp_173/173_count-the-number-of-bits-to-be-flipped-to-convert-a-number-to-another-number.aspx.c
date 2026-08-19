/* Source: https://www.includehelp.com/c-programs/count-the-number-of-bits-to-be-flipped-to-convert-a-number-to-another-number.aspx */
// C program to count number of bits to be flipped
// to convert a number to another number

#include <stdio.h>
#include <string.h>

int countBits(int num1, int num2)
{
    int cnt = 0;
    int lsb1 = 0;
    int lsb2 = 0;

    while ((num1 > 0) || (num2 > 0)) {
        lsb1 = num1 & 1;
        lsb2 = num2 & 1;

        if (lsb1 != lsb2)
            cnt++;

        num1 = num1 >> 1;
        num2 = num2 >> 1;
    }
    return cnt;
}

int main()
{
    int num1 = 0;
    int num2 = 0;

    printf("Enter number1: ");
    scanf("%d", &num1);

    printf("Enter number2: ");
    scanf("%d", &num2);

    printf("Number of bits flipped: %d\n", countBits(num1, num2));
    return 0;
}
