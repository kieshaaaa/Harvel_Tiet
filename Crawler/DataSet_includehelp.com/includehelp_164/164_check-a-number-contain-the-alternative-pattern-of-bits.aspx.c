/* Source: https://www.includehelp.com/c-programs/check-a-number-contain-the-alternative-pattern-of-bits.aspx */
// C program to check a number contain 
// alternative pattern of bits

#include <stdio.h>
#include <stdlib.h>
int main()
{
    int num = 0;
    int tmp = 0;
    int cnt = 0;
    int i = 0;

    printf("Enter number: ");
    scanf("%d", &num);

    tmp = num;
    while (tmp) {
        cnt++;
        tmp = tmp >> 1;
    }

    printf("Binary Number: ");
    for (i = cnt - 1; i >= 0; i--) {
        if (num & (1 << i))
            printf("1");
        else
            printf("0");
    }

    //Check number contains the alternate pattern of bits.
    for (i = 0; i < cnt - 1; i++) {
        if (((num >> i) & 1) == ((num >> (i + 2)) & 1)) {
            continue;
        }
        else {
            printf("\nAlternate BIT pattern does not exist\n");
            return 0;
        }
    }

    printf("\nAlternate BIT pattern exists\n");

    return 0;
}
