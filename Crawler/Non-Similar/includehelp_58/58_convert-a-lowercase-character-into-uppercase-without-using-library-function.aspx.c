/* Source: https://www.includehelp.com/c-programs/convert-a-lowercase-character-into-uppercase-without-using-library-function.aspx */
// C program to convert a lowercase character
// into uppercase without using
// library function

#include <stdio.h>

char toUpperCase(char ch)
{
    ch = ch - 32;
    return ch;
}

int main()
{
    char ch;

    printf("Enter a lowercase character: ");
    scanf("%c", &ch);

    printf("Uppercase character is: %c\n", toUpperCase(ch));

    return 0;
}
