/* Source: https://www.includehelp.com/c-programs/print-all-printable-characters-using-the-isprint-function.aspx */
// C program to print all printable characters
// using isprint() function

#include <stdio.h>
#include <ctype.h>

int main()
{
    int cnt;
    printf("Printable characters are: \n");

    for (cnt = 0; cnt <= 127; cnt++)
        if (isprint(cnt) != 0)
            printf("%c ", cnt);

    printf("\n");

    return 0;
}
