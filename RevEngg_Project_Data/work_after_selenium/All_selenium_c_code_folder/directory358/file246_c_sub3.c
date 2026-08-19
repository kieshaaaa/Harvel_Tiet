#include <stdio.h>

int main() {
    char str[100];
    int i = 0, isPalindrome = 1;

    printf("Enter a string: ");
    scanf("%s", str);

    // Find end of the string and check palindrome simultaneously
    for (int j = 0; str[j] != '\0'; j++) {
        if (str[j + 1] == '\0') { // End of string
            for (int k = 0; k < j / 2; k++) {
                if (str[k] != str[j - k]) {
                    isPalindrome = 0;
                    break;
                }
            }
        }
    }

    if (isPalindrome)
        printf("The string [ %s ] is a Palindrome.\n", str);
    else
        printf("The string [ %s ] is not a Palindrome.\n", str);

    return 0;
}