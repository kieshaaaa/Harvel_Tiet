#include <stdio.h>

#define MAX_SIZE 100

int main() {
    char string[MAX_SIZE];
    int alphabets = 0, digits = 0, others = 0, spaces = 0;

    printf("\nEnter any string: ");
    fgets(string, MAX_SIZE, stdin);

    for(int i = 0; string[i] != '\0'; i++) {
        if((string[i] >= 'a' && string[i] <= 'z') || (string[i] >= 'A' && string[i] <= 'Z')) {
            alphabets++;
        }
        else if(string[i] >= '0' && string[i] <= '9') {
            digits++;
        }
        else if(string[i] == ' ') {
            spaces++;
        }
        else {
            others++;
        }
    }

    printf("\nAlphabets = [ %d ]", alphabets);
    printf("\nDigits = [ %d ]", digits);
    printf("\nSpaces = [ %d ]", spaces);
    printf("\nSpecial characters = [ %d ]\n", others);

    return 0;
}