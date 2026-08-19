/* Source: https://www.includehelp.com/c-programs/print-the-biggest-and-smallest-palindrome-words-in-a-string.aspx */
// C program to print the biggest and smallest
// palindrome words in a string

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main()
{
    int l = 0;
    int cnt = 0;
    int cnt1 = 0;
    int cnt2 = 0;
    int space = 0;
    int count = 0;
    int init = 0;
    int min = 0;
    int max = 0;
    int len = 0;
    int flag = 0;

    char str[100];
    char str1[30][20];
    char str2[30];
    char str3[30];
    char minP[30];
    char maxP[30];

    printf("Enter a string: ");
    fflush(stdin);
    gets(str);

    while (str[cnt] != '\0') {
        if (str[cnt] == ' ')
            space++;
        cnt++;
    }

    cnt = 0;
    for (cnt1 = 0; cnt1 <= space; cnt++, cnt1++) {
        cnt2 = 0;
        while (str[cnt] != '\0') {
            if (str[cnt] == ' ') {
                break;
            }
            else {
                str1[cnt1][cnt2++] = str[cnt];
                cnt++;
            }
        }
        str1[cnt1][cnt2] = '\0';
    }

    for (cnt = 0; cnt < space + 1; cnt++) {
        strcpy(str2, str1[cnt]);
        count = strlen(str1[cnt]);
        cnt2 = 0;

        for (l = count - 1; l >= 0; l--)
            str3[cnt2++] = str1[cnt][l];

        str3[cnt2] = '\0';

        if (strcmp(str3, str2) == 0) {
            flag = 1;
            if (init < 1) {
                strcpy(minP, str3);
                strcpy(maxP, str2);
                min = strlen(minP);
                max = strlen(maxP);
                init++;
            }

            printf("String %s is a Palindrome\n", str3);

            len = strlen(str3);
            if (len >= max)
                strcpy(maxP, str3);
            else if (len <= min)
                strcpy(minP, str3);
        }
    }

    if (flag == 1) {
        printf("%s is a smallest palindrome\n", minP);
        printf("%s is a biggest palindrome\n", maxP);
    }
    else
        printf("There is no string is palindrome\n");
}
