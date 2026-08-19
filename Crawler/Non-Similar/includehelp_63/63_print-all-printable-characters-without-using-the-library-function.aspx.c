/* Source: https://www.includehelp.com/c-programs/print-all-printable-characters-without-using-the-library-function.aspx */
// C program to print all printable characters
// without using library function

#include <stdio.h>
#include <ctype.h>

int isPunctuation(char ch)
{
    if (ch == '!' || ch == '\"' || ch == '#' || ch == '$' || ch == '%' || ch == '&' || ch == '\'' || ch == '(' || ch == ')' || ch == '*' || ch == '+' || ch == ',' || ch == '-' || ch == '.' || ch == '/' || ch == ':' || ch == ';' || ch == '<' || ch == '=' || ch == '>' || ch == '?' || ch == '@' || ch == '[' || ch == '\\' || ch == ']' || ch == '^' || ch == '`' || ch == '{' || ch == '|' || ch == '}' || ch == '~')
        return 1;

    return 0;
}

int isAlphaNumeric(char ch)
{
    if ((ch >= '0' & ch <= '9') || (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z'))
        return 1;

    return 0;
}

int isPrintable(char ch)
{
    if (isAlphaNumeric(ch) || isPunctuation(ch))
        return 1;
    return 0;
}

int main()
{
    int cnt;
    printf("Printable characters are: \n");

    for (cnt = 0; cnt <= 127; cnt++)
        if (isPrintable(cnt) != 0)
            printf("%c ", cnt);

    printf("\n");

    return 0;
}
