#include <stdio.h>

int main() {
    char str[100];
    int countDigits = 0, countAlphabet = 0, countSpecialChar = 0, countSpaces = 0;

    printf("Enter a string: ");
    scanf(" %[^\n]s", str);

    for (int i = 0; str[i] != '\0'; i++) {
        switch (str[i]) {
            case '0' ... '9':
                countDigits++;
                break;
            case 'A' ... 'Z':
            case 'a' ... 'z':
                countAlphabet++;
                break;
            case ' ':
                countSpaces++;
                break;
            default:
                countSpecialChar++;
                break;
        }
    }

    printf("\nDigits: %d", countDigits);
    printf("\nAlphabets: %d", countAlphabet);
    printf("\nSpaces: %d", countSpaces);
    printf("\nSpecial Characters: %d", countSpecialChar);

    return 0;
}