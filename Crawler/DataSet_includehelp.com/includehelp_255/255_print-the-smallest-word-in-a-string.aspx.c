/* Source: https://www.includehelp.com/c-programs/print-the-smallest-word-in-a-string.aspx */
// C program to print the smallest word in a string

#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
    int i = 0;
    int j = 0;
    int flag = 0;

    char str[64];
    char word[64];

    char small[16];

    printf("Enter a string: ");
    fflush(stdin);
    scanf("%[^\n]s", str);

    for (i = 0; i < strlen(str); i++) {
        while (i < strlen(str) && !isspace(str[i]) && isalnum(str[i])) {
            word[j++] = str[i++];
        }
        if (j != 0) {
            word[j] = '\0';
            if (!flag) {
                flag = !flag;
                strcpy(small, word);
            }
            if (strlen(word) < strlen(small)) {
                strcpy(small, word);
            }
            j = 0;
        }
    }

    printf("Smallest Word in string is: %s\n", small);
    return 0;
}
