#include <stdio.h>

int main() {
    char str[100];
    int countDigits = 0, countAlphabet = 0, countSpecialChar = 0, countSpaces = 0;
    int counter = 0;

    printf("Enter a string: ");
    scanf("%[^\n]%*c", str); // Read until newline is encountered

    while (str[counter] != '\0') { // Use '\0' for the null character

        if (str[counter] >= '0' && str[counter] <= '9')
            countDigits++;
        else if ((str[counter] >= 'A' && str[counter] <= 'Z') || (str[counter] >= 'a' && str[counter] <= 'z'))
            countAlphabet++;
        else if (str[counter] == ' ')
            countSpaces++;
        else
            countSpecialChar++;

        counter++;
    }

    printf("\nDigits: %d", countDigits);
    printf("\nAlphabets: %d", countAlphabet);
    printf("\nSpaces: %d", countSpaces);
    printf("\nSpecial Characters: %d", countSpecialChar);

    return 0;
}