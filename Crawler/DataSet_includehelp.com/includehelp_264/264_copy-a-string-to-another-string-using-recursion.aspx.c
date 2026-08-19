/* Source: https://www.includehelp.com/c-programs/copy-a-string-to-another-string-using-recursion.aspx */
// C program to copy a string to another string
// using recursion

#include <stdio.h>

void copyRec(char str1[], char str2[])
{
    static int i = 0;

    str1[i] = str2[i];

    if (str2[i] == '\0')
        return;

    i = i + 1;
    copyRec(str1, str2);
}

int main()
{
    char str1[64];
    char str2[64];

    printf("Enter string: ");
    scanf("%[^\n]s", str1);

    copyRec(str2, str1);

    printf("Str1: %s\n", str1);
    printf("Str2: %s\n", str2);

    return 0;
}
