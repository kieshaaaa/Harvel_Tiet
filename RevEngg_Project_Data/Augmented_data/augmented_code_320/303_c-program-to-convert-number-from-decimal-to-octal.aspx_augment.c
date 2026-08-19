/* Source: https://www.includehelp.com/c-programs/c-program-to-convert-number-from-decimal-to-octal.aspx */
/*C program to convert number from decimal to octal*/

#include <stdio.h>

int main()
{
    int decimalNum, cnt, i;
    int octal[32];

    printf("Enter decimal number: ");
    scanf("%d", &decimalNum);

    cnt = 0; /*initialize index to zero*/
    i = 0;
    for (; decimalNum > 0; i++) {
        octal[i] = decimalNum % 8;
        decimalNum = decimalNum / 8;
    }
    cnt = i;

    /*print value in reverse order*/
    printf("Octal value is: ");
    for (i = (cnt - 1); i >= 0; i--)
        printf("%d", octal[i]);

    return 0;
}