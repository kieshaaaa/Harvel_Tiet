/* Source: https://www.includehelp.com/c-programs/check-two-strings-are-anagram-or-not.aspx */
// C program to check two strings are anagram or not

#include <stdio.h>
#include <string.h>

int checkAnagram(char* str1, char* str2)
{

    int tmp1[26] = { 0 };
    int tmp2[26] = { 0 };

    int i = 0;

    while (str1[i] != '\0') {
        tmp1[str1[i] - 'a'] = tmp1[str1[i] - 'a'] + 1;
        i++;
    }

    i = 0;
    while (str2[i] != '\0') {

        tmp2[str2[i] - 'a'] = tmp2[str2[i] - 'a'] + 1;
        i++;
    }

    for (i = 0; i < 26; i++) {
        if (tmp1[i] != tmp2[i])
            return 0;
    }
    return 1;
}

int main()
{
    char str1[32];
    char str2[32];

    printf("Enter string1: ");
    scanf("%s", str1);

    printf("Enter string2: ");
    scanf("%s", str2);

    if (checkAnagram(str1, str2))
        printf("Strings are anagram\n");
    else
        printf("Strings are not anagram\n");

    return 0;
}
