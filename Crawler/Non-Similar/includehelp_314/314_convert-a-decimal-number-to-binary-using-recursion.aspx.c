/* Source: https://www.includehelp.com/c-programs/convert-a-decimal-number-to-binary-using-recursion.aspx */
// C program to convert decimal number to binary
// using recursion

#include <stdio.h>

unsigned long long int decimalToBinary(int num)
{
    if (num != 0)
        return (num % 2 + 10 * decimalToBinary(num / 2));
    else
        return 0;
}

int main()
{
    int decNum = 0;
    unsigned long long int binNum = 0;

    printf("Enter Decimal Number: ");
    scanf("%d", &decNum);

    binNum = decimalToBinary(decNum);

    printf("Binary Number: %llu", binNum);

    return 0;
}
