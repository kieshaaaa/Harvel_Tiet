/* Source: https://www.includehelp.com/c-programs/find-the-frequency-of-the-given-word-in-a-string.aspx */
// C program to find the frequency of given word in a string

#include <stdio.h>
#include <string.h>

int FindFrequency(char* str, char* word)
{
    int len = 0;
    int wlen = 0;
    int cnt = 0;
    int flg = 0;

    int i = 0;
    int j = 0;

    len = strlen(str);
    wlen = strlen(word);

    for (i = 0; i <= len - wlen; i++) {

        flg = 1;
        for (j = 0; j < wlen; j++) {
            if (str[i + j] != word[j]) {
                flg = 0;
                break;
            }
        }

        if (flg == 1)
            cnt++;
    }

    return cnt;
}

int main()
{
    char str[64];
    char word[16];

    int count = 0;

    printf("Enter string: ");
    scanf("%[^\n]s", str);

    printf("Enter word to be searched: ");
    scanf("%s", word);

    count = FindFrequency(str, word);

    printf("Frequency of the word '%s' is: %d\n", word, count);

    return 0;
}
