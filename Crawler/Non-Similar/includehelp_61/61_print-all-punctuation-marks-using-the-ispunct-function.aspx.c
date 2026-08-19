/* Source: https://www.includehelp.com/c-programs/print-all-punctuation-marks-using-the-ispunct-function.aspx */
// C program to print all punctuation marks
// using ispunct() function

#include <stdio.h>
#include <ctype.h>

int main()
{
    int cnt;
    printf("Punctuation marks are: \n");

    for (cnt = 0; cnt <= 127; cnt++)
        if (ispunct(cnt) != 0)
            printf("%c ", cnt);

    printf("\n");

    return 0;
}
