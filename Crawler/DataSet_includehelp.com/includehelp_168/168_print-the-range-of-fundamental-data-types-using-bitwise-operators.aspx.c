/* Source: https://www.includehelp.com/c-programs/print-the-range-of-fundamental-data-types-using-bitwise-operators.aspx */
// C program to print the range of fundamental data types
// using bitwise operators

#include <stdio.h>

#define SIZE(n) sizeof(n) * 8

void SizeOfSignedNum(int num)
{
    int min = 0;
    int max = 0;
    int tmp = 1;

    while (num != 1) {
        tmp = tmp << 1;
        num--;
    }

    min = ~tmp;
    min = min + 1;
    max = tmp - 1;
    printf("%d to %d", min, max);
}

void SizeOfUnsignedNum(int num)
{
    int min = 0;
    int max = 0;
    int tmp = 1;

    while (num != 0) {
        tmp = tmp << 1;
        num--;
    }

    min = 0;
    max = tmp - 1;
    printf("%u to %u", min, max);
}

int main()
{
    printf("\nRange of int: ");
    SizeOfSignedNum(SIZE(int));

    printf("\nRange of unsigned int: ");
    SizeOfUnsignedNum(SIZE(unsigned int));

    printf("\nRange of char: ");
    SizeOfSignedNum(SIZE(char));

    printf("\nRange of unsigned char: ");
    SizeOfUnsignedNum(SIZE(unsigned char));

    printf("\nRange of short: ");
    SizeOfSignedNum(SIZE(short));

    printf("\nRange of unsigned short: ");
    SizeOfUnsignedNum(SIZE(unsigned short));

    printf("\n");
    return 0;
}
