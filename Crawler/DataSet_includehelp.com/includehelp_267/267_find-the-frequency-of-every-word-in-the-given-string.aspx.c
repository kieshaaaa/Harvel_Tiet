/* Source: https://www.includehelp.com/c-programs/find-the-frequency-of-every-word-in-the-given-string.aspx */
// C program to find the frequency of every word 
// in the given string

#include <stdio.h>
#include <string.h>

void printFrequencyofWords(char* str)
{
    int count = 0;
    int c = 0;

    int i = 0;
    int j = 0;
    int k = 0;
    int spaceCnt = 0;

    char str1[64];

    char p[20][50];
    char ptr1[20][50];

    char* ptr;

    for (; i < strlen(str); i++) {
        if ((str[i] == ' ') || (str[i] == ',' && str[i + 1] == ' ') || (str[i] == '.')) {
            spaceCnt = spaceCnt + 1;
        }
    }

    for (i = 0; j < strlen(str); j++) {
        if ((str[j] == ' ') || (str[j] == 44) || (str[j] == 46)) {
            p[i][k] = '\0';
            i++;
            k = 0;
        }
        else
            p[i][k++] = str[j];
    }

    k = 0;
    i = 0;
    for (; i <= spaceCnt; i++) {
        for (j = 0; j <= spaceCnt; j++) {
            if (i == j) {
                strcpy(ptr1[k], p[i]);
                k = k + 1;
                count = count + 1;
                break;
            }
            else {
                if (strcmp(ptr1[j], p[i]) != 0)
                    continue;
                else
                    break;
            }
        }
    }

    for (i = 0; i < count; i++) {
        for (j = 0; j <= spaceCnt; j++) {
            if (strcmp(ptr1[i], p[j]) == 0)
                c = c + 1;
        }
        printf("Frequency of '%s' is: %d\n", ptr1[i], c);
        c = 0;
    }
}

int main()
{
    char str[64];
    printf("Enter the string: ");
    scanf(" %[^\n]s", str);

    printFrequencyofWords(str);

    return 0;
}
