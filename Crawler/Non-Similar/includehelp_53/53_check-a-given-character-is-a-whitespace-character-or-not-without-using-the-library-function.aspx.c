/* Source: https://www.includehelp.com/c-programs/check-a-given-character-is-a-whitespace-character-or-not-without-using-the-library-function.aspx */
// C program to check a given character is a whitespace character or not
// without using library function

#include <stdio.h>

int isWhiteSpace(char ch)
{
    if ((ch == ' ') || (ch == '\t') || (ch == '\n') || (ch == 'v') || (ch == '\r') || (ch == '\f'))
        return 1;

    return 0;
}

int main()
{
    char ch1 = ' ';
    char ch2 = '\t';
    char ch3 = 't';

    if (isWhiteSpace(ch1))
        printf("Given character is a whitespace character\n");
    else
        printf("Given character is not a whitespace character\n");

    if (isWhiteSpace(ch2))
        printf("Given character is a whitespace character\n");
    else
        printf("Given character is not a whitespace character\n");

    if (isWhiteSpace(ch3))
        printf("Given character is a whitespace character\n");
    else
        printf("Given character is not a whitespace character\n");

    return 0;
}
