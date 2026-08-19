#include <stdio.h>

int main() {
    char str[100] = ""; // Initialize string with empty
    int countDigits = 0, countAlphabet = 0, countSpecialChar = 0, countSpaces = 0;

    printf("Enter a string: ");
    scanf(" %[^\n]s", str); // Space before % to consume any leading whitespace

    for (int i = 0; str[i] != '\0'; i++) { // Direct use of '\0'

        char ch = str[i]; // Working with a copy of each character
        if (ch >= '0' && ch <= '9')
            countDigits++;
        else if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z'))
            countAlphabet++;
        else if (ch == ' ')
            countSpaces++;
        else
            countSpecialChar++;
    }

    printf("\nDigits: %d", countDigits);
    printf("\nAlphabets: %d", countAlphabet);
    printf("\nSpaces: %d", countSpaces);
    printf("\nSpecial Characters: %d", countSpecialChar);

    return 0;
}