/* Source: https://www.includehelp.com/c-programs/implement-the-kmp-pattern-search-algorithm.aspx */
// C program to implement the KMP pattern search algorithm

#include <stdio.h>
#include <string.h>
#include <ctype.h>

int main()
{
    char str[64];
    char word[20] = "is";

    int i = 0;
    int j = 0;
    int c = 0;

    int index = 0;
    int length = 0;

    printf("Enter string: ");
    scanf("%[^\n]s", str);

    while (str[i]) {
        str[i] = tolower(str[i]);
        i++;
    }

    length = strlen(str) - strlen(word) + 1;
    for (i = 0; i < length; i++) {
        index = i;
        if (str[i] == word[j]) {
            do {
                i++;
                j++;

            } while (j != strlen(word) && str[i] == word[j]);

            if (j == strlen(word)) {
                printf("Word '%s' found from index %d to %d.\n", word, index + 1, i);
                return 0;
            }
            else {
                i = index + 1;
                j = 0;
            }
        }
    }

    printf("No word found in the string.\n");

    return 0;
}
