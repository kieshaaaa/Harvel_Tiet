#include <stdio.h>

int main() {
    char str[100];
    int length = 0, isPalindrome = 1;

    printf("Enter a string: ");
    scanf("%s", str);

    // Calculate the length of the string
    for (length = 0; str[length] != '\0'; ++length);

    // Check palindrome
    for (int i = 0, j = length - 1; i < j; i++, j--) {
        if (str[i] != str[j]) {
            isPalindrome = 0;
            break;
        }
    }

    if (isPalindrome)
        printf("The string [ %s ] is a Palindrome.\n", str);
    else
        printf("The string [ %s ] is not a Palindrome.\n", str);

    return 0;
}