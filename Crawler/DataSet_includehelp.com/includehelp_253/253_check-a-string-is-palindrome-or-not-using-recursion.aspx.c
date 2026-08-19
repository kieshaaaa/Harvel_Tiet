/* Source: https://www.includehelp.com/c-programs/check-a-string-is-palindrome-or-not-using-recursion.aspx */
// C program to check a string is palindrome or not
// using recursion

#include <stdio.h>
#include <string.h>

void isPalindrom(char str[], int index)
{
    int len = strlen(str) - (index + 1);

    if (str[index] == str[len]) {
        if (index + 1 == len || index == len) {
            printf("Given string is a palindrome\n");
            return;
        }
        isPalindrom(str, index + 1);
    }
    else {
        printf("Given string is not a palindrome\n");
    }
}

int main()
{
    char str[32] = { 0 };
    char rev[32] = { 0 };

    int cnt = 0;
    int flg = 0;

    printf("Enter a string: ");
    scanf("%s", str);

    isPalindrom(str, 0);

    return 0;
}
