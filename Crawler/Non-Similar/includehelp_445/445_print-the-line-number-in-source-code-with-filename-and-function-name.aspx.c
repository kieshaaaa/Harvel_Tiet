/* Source: https://www.includehelp.com/c-programs/print-the-line-number-in-source-code-with-filename-and-function-name.aspx */
// C program to print the line number in source code
// with filename and function name

#include <stdio.h>

int main()
{
    printf("Line Number %s->%s:%d\n", __FILE__, __FUNCTION__, __LINE__);

    return 0;
}
