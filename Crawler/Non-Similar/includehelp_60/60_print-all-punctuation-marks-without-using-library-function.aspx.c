/* Source: https://www.includehelp.com/c-programs/print-all-punctuation-marks-without-using-library-function.aspx */
// C program to print all punctuation marks
// without using library function

#include <stdio.h>

int isPunctuation(char ch)
{
    if (ch == '!' || ch == '\"' || ch == '#' || ch == '$' || ch == '%' || ch == '&' || ch == '\'' || ch == '(' || ch == ')' || ch == '*' || ch == '+' || ch == ',' || ch == '-' || ch == '.' || ch == '/' || ch == ':' || ch == ';' || ch == '<' || ch == '=' || ch == '>' || ch == '?' || ch == '@' || ch == '[' || ch == '\\' || ch == ']' || ch == '^' || ch == '`' || ch == '{' || ch == '|' || ch == '}' || ch == '~')
        return 1;

    return 0;
}

int main()
{
    int cnt;
    printf("Punctuation marks are: \n");

    for (cnt = 0; cnt <= 127; cnt++)
        if (isPunctuation(cnt) != 0)
            printf("%c ", cnt);

    printf("\n");

    return 0;
}
