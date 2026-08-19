/* Source: https://www.includehelp.com/c-programs/find-the-highest-frequency-of-a-character-in-the-given-string.aspx */
// C program to find the highest frequency of a character
// in the given string

#include <stdio.h>
#include <string.h>

void printHighestFrequency(char* str)
{
    int i = 0;
    int j = 0;
    int k = 0;

    int len = 0;
    int high = 0;
    int index = 0;
    int flag = 0;

    char str1[64];
    int cnt[64] = { 0 };

    len = strlen(str);

    while (i < len) {
        if (i == 0) {
            str1[j++] = str[i];
            cnt[j - 1]++; // = cnt[j - 1] + 1;
        }
        else {
            for (k = 0; k < j; k++) {
                if (str[i] == str1[k]) {
                    cnt[k]++;
                    flag = 1;
                }
            }

            if (flag == 0) {
                str1[j++] = str[i];
                cnt[j - 1]++;
            }
            flag = 0;
        }
        i++;
    }

    for (i = 0; i < j; i++) {
        if ((i == 0) && (str1[i] != ' ')) {
            high = cnt[i];
            continue;
        }

        if ((high < cnt[i]) && (str1[i] != ' ')) {
            high = cnt[i];
            index = i;
        }
    }
    printf("Character '%c' is repeted %d time\n", str1[index], cnt[index]);
}

int main()
{
    char str[64];
    printf("Enter the string: ");
    scanf(" %[^\n]s", str);

    printHighestFrequency(str);

    return 0;
}
