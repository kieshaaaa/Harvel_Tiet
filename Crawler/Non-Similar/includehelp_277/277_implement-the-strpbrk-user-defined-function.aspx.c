/* Source: https://www.includehelp.com/c-programs/implement-the-strpbrk-user-defined-function.aspx */
// C program to implement the strpbrk() function

#include <stdio.h>

char* strpbrk(char* str1, char* str2)
{
    int i = 0;
    int j = 0;

    int pos = 0;
    int flg = 0;

    while (*(str1 + i))
        i++;

    pos = i;
    i = 0;
    while (*(str2 + i)) {
        j = 0;
        while (*(str1 + j)) {
            if (str2[i] == str1[j]) {
                if (j <= pos) {
                    pos = j;
                    flg = 1;
                }
            }
            j++;
        }
        i++;
    }

    if (flg == 1)
        return &str1[pos];

    return NULL;
}

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
