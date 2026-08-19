/* Source: https://www.includehelp.com/c-programs/find-a-specific-word-ends-with-a-specific-character-in-the-string.aspx */
// C program to find a specific word ends
// with specific character in string

#include <stdio.h>
#include <string.h>

int main()
{
    char str[32];
    char ch = 's';

    int len = 0;

    int i = 0;
    int j = 0;
    int t = 0;
    int f = 0;

    printf("Enter string: ");
    scanf("%[^\n]s", str);

    len = strlen(str);

    str[len] = ' ';

    for (t = 0, i = 0; i < len; i++) {
        if ((str[i] == ' ') && (str[i - 1] == ch)) {
            for (j = t; j < i; j++) {
                if (f == 0)
                    printf("Words are: \n");
                printf("%c", str[j]);
                f = 1;
            }
            t = i + 1;
            printf("\n");
        }
        else {
            if (str[i] == ' ')
                t = i + 1;
        }
    }

    if(f == 0)
        printf("Words not found ending with '%c'\n", ch);

    return 0;
}
