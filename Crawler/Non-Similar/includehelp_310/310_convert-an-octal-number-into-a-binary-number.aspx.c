/* Source: https://www.includehelp.com/c-programs/convert-an-octal-number-into-a-binary-number.aspx */
// C program to convert an octal number 
// into binary number

#include <stdio.h>

int main()
{
    char octalNum[32];
    int i = 0;

    printf("Enter octal number: ");
    scanf("%s", octalNum);

    printf("Binay number: ");
    while (octalNum[i]) {
        switch (octalNum[i]) {
        case '0':
            printf("000");
            break;

        case '1':
            printf("001");
            break;

        case '2':
            printf("010");
            break;

        case '3':
            printf("011");
            break;

        case '4':
            printf("100");
            break;

        case '5':
            printf("101");
            break;

        case '6':
            printf("110");
            break;

        case '7':
            printf("111");
            break;

        default:
            printf("\nInvalid octal number");
            return 0;
        }
        i++;
    }

    return 0;
}
