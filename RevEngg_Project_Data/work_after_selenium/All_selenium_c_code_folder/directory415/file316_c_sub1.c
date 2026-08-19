#include<stdio.h>

int main() {
    int wordCount = 0;
    char inputString[30];
    printf("\nEnter a string: ");
    scanf("%[^\n]%*c", inputString);

    for (int i = 0; inputString[i] != '\0';) {
        // Skip any spaces or separators at the beginning
        while (inputString[i] == ' ' || inputString[i] == '\n' || inputString[i] == '\t') {
            i++;
        }
        
        if (inputString[i] != '\0') {
            wordCount++;
        }

        // Move to the end of the current word
        while (inputString[i] != '\0' && inputString[i] != ' ' && inputString[i] != '\n' && inputString[i] != '\t') {
            i++;
        }
    }

    printf("\nNumber of words in string \"%s\" is: %d\n", inputString, wordCount);
    return 0;
}