#include<stdio.h>

int main() {
    int wordCounter = 0;
    char text[30];
    printf("\nEnter a string: ");
    scanf("%[^\n]%*c", text);

    int inWord = 0; // Acts as a boolean: 0 = false, not 0 = true

    for (int index = 0; text[index] != '\0'; index++) {
        if (text[index] == ' ' || text[index] == '\n' || text[index] == '\t') {
            inWord = 0;
        } else if (!inWord) {
            inWord = 1;
            wordCounter++;
        }
    }

    printf("\nNumber of words in string \"%s\" is: %d\n", text, wordCounter);
    return 0;
}