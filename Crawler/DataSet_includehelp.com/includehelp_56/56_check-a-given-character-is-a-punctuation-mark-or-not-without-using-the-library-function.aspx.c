/* Source: https://www.includehelp.com/c-programs/check-a-given-character-is-a-punctuation-mark-or-not-without-using-the-library-function.aspx */
// C program to check a given character is a punctuation mark or not
// without using library function

#include <stdio.h>

int isPunctuation(char ch)
{
    if (ch == '!' || ch == '\"' || ch == '#' || ch == '$' || ch == '%' || ch == '&' || ch == '\'' || ch == '(' || ch == ')' || ch == '*' || ch == '+' || ch == ',' || ch == '-' || ch == '.' || ch == '/' || ch == ':' || ch == ';' || ch == '<' || ch == '=' || ch == '>' || ch == '?' || ch == '@' || ch == '[' || ch == '\\' || ch == ']' || ch == '^' || ch == '`' || ch == '{' || ch == '|' || ch == '}')
        return 1;

    return 0;
}

int main()
{
    char ch;

    printf("Enter character: ");
    scanf("%c", &ch);

    if (isPunctuation(ch))
        printf("Given character is a punctuation mark\n");
    else
        printf("Given character is not a punctuation mark\n");

    return 0;
}
