/* Source: https://www.includehelp.com/c-programs/convert-an-uppercase-character-into-lowercase-without-using-library-function.aspx */
// C program to covert an uppercase character into lowercase
// without using library function

#include <stdio.h>

char toLowerCase(char ch)
{
    ch = ch + 32;
    return ch;
}

int main()
{
    char ch;

    printf("Enter a uppercase character: ");
    scanf("%c", &ch);

    printf("Lowercase character is: %c\n", toLowerCase(ch));

    return 0;
}
