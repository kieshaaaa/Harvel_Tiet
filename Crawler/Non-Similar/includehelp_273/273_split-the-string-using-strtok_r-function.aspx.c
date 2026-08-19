/* Source: https://www.includehelp.com/c-programs/split-the-string-using-strtok_r-function.aspx */
// C program to split the string
// using strtok_r() function

#include <stdio.h>
#include <string.h>

int main()
{
    char str[32] = "www.includehelp.com";
    char* word;
    char delim[2] = ".";

    char* ptr = str;

    while ((word = strtok_r(ptr, delim, &ptr)))
        printf("%s\n", word);

    return 0;
}
