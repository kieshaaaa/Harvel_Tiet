/* Source: https://www.includehelp.com/c-programs/c-program-to-convert-number-from-decimal-to-hexadecimal.aspx */
/*C program to convert number from decimal to hexadecimal*/

#include <stdio.h>

int main()
{
    int decimalNum, index, i;
    char hexadecimal[32]; /*bcoz it contains characters A to F*/

    printf("Enter decimal number: ");
    scanf("%d", &decimalNum);

    index = 0; /*initialize index to zero*/
    i = 0;
    for (; decimalNum > 0; i++) {
        switch (decimalNum % 16) {
        case 10:
            hexadecimal[index] = 'A';
            break;
        case 11:
            hexadecimal[index] = 'B';
            break;
        case 12:
            hexadecimal[index] = 'C';
            break;
        case 13:
            hexadecimal[index] = 'D';
            break;
        case 14:
            hexadecimal[index] = 'E';
            break;
        case 15:
            hexadecimal[index] = 'F';
            break;
        default:
            hexadecimal[index] = (decimalNum % 16) + 0x30; /*converted into char value*/
        }
        decimalNum = decimalNum / 16;
        index++;
    }

    /*print value in reverse order*/
    printf("Hexadecimal value is: ");
    for (i = (index - 1); i >= 0; i--)
        printf("%c", hexadecimal[i]);

    return 0;
}