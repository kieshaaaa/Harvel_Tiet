#include <stdio.h>

int main() {
    char str[100];
    int half, length = 0, palindrome = 1;

    printf("Enter a string: ");
    scanf("%s", str);

    // Find string length
    while (str[length] != '\0') length++;

    // Set halfway point
    half = length / 2;

    // Check for palindrome
    for (int i = 0; i < half; i++) {
        if (str[i] != str[length - i - 1]) {
            palindrome = 0;
            break;
        }
    }

    if (palindrome)
        printf("The string [ %s ] is a Palindrome.\n", str);
    else
        printf("The string [ %s ] is not a Palindrome.\n", str);

    return 0;
}