/* Source: https://www.includehelp.com/c-programs/reverse-every-word-of-the-given-string.aspx */
// C program to reverse every word of given string

#include <stdio.h>
#include <string.h>

int main()
{
    char str[64];
    char words[6][10];
    char temp;

    int i = 0;
    int j = 0;
    int k = 0;
    int ii = 0;
    int l = 0;

    printf("Enter string: ");
    scanf("%[^\n]s", str);

    while (str[i] != 0) {
        if (str[i] == ' ') {
            words[k][j] = '\0';
            k++;
            j = 0;
        }
        else {
            words[k][j] = str[i];
            j++;
        }
        i++;
    }
    words[k][j] = '\0';

    for (i = 0; i <= k; i++) {
        l = strlen(words[i]);

        for (j = 0, ii = l - 1; j < ii; j++, ii--) {
            temp = words[i][j];
            words[i][j] = words[i][ii];
            words[i][ii] = temp;
        }
    }

    printf("Result: \n");
    for (i = 0; i <= k; i++)
        printf("%s ", words[i]);
}
