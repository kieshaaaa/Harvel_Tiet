/* Source: https://www.includehelp.com/c-programs/demonstrate-the-strpbrk-function.aspx */
// C program to demonstrate the strpbrk() function

#include <stdio.h>
#include <string.h>

int main()
{
    char* ptr;
    char str[] = "Learn programming on www.includehelp.com";
    char vowels[] = "aeiou";

    ptr = strpbrk(str, vowels);
    if (ptr != NULL)
        printf("First vowel is: '%c' in the string\n", ptr[0]);
    else
        printf("No any vowel found within the string.\n");

    return 0;
}
