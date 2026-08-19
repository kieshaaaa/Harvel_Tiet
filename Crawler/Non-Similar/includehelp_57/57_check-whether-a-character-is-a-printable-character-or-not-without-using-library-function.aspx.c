/* Source: https://www.includehelp.com/c-programs/check-whether-a-character-is-a-printable-character-or-not-without-using-library-function.aspx */
// C program to check whether a character
// is a printable character or not
// without using library function

#include <stdio.h>
#include <ctype.h>

int isPunctuation(char ch)
{
    if (ch == '!' || ch == '\"' || ch == '#' || ch == '$' || ch == '%' || ch == '&' || ch == '\'' || ch == '(' || ch == ')' || ch == '*' || ch == '+' || ch == ',' || ch == '-' || ch == '.' || ch == '/' || ch == ':' || ch == ';' || ch == '<' || ch == '=' || ch == '>' || ch == '?' || ch == '@' || ch == '[' || ch == '\\' || ch == ']' || ch == '^' || ch == '`' || ch == '{' || ch == '|' || ch == '}')
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
    char ch1 = 'a';
    char ch2 = 'A';
    char ch3 = 95;

    if (isPrintable(ch1) != 0)
        printf("Given character is a printable character\n");
    else
        printf("Given character is not a printable character\n");

    if (isPrintable(ch2) != 0)
        printf("Given character is a printable character\n");
    else
        printf("Given character is not a printable character\n");

    if (isPrintable(ch3) != 0)
        printf("Given character is a printable character\n");
    else
        printf("Given character is not a printable character\n");

    return 0;
}
