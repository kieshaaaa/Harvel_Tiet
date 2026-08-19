/* Source: https://www.includehelp.com/c-programs/print-bits-that-need-to-be-flipped-to-convert-a-number-to-another-number.aspx */
// C program to print bits that need to be flipped
// to convert a number to another number

#include <stdio.h>
#include <string.h>

void changedBits(int num1, int num2)
{
    int lsb1 = 0;
    int lsb2 = 0;
    int bitNum = 0;

    printf("Bits needs to be changed are:\n");
    while ((num1 > 0) || (num2 > 0)) {
        lsb1 = num1 & 1;
        lsb2 = num2 & 1;

        if (lsb1 != lsb2)
            printf("%d ", bitNum);

        num1 = num1 >> 1;
        num2 = num2 >> 1;

        bitNum++;
    }

    printf("\n");
}

int main()
{
    int num1 = 0;
    int num2 = 0;

    printf("Enter number1: ");
    scanf("%d", &num1);

    printf("Enter number2: ");
    scanf("%d", &num2);

    changedBits(num1, num2);

    return 0;
}
