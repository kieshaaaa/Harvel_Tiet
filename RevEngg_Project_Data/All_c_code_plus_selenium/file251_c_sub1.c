#include <stdio.h>

#define MAX_SIZE 100

int main() {
    char string[MAX_SIZE];
    int alphabets = 0, digits = 0, others = 0;

    printf("\nEnter any string: ");
    fgets(string, MAX_SIZE, stdin);

    for(int i = 0; string[i] != '\0'; i++) {
        if((string[i] >= 'a' && string[i] <= 'z') || (string[i] >= 'A' && string[i] <= 'Z')) {
            alphabets++;
        }
        else if(string[i] >= '0' && string[i] <= '9') {
            digits++;
        }
        else {
            others++;
        }
    }

    int alphabetsResult = alphabets;
    int digitsResult = digits;
    int othersResult = others;

    printf("\nAlphabets = [ %d ]", alphabetsResult);
    printf("\nDigits = [ %d ]", digitsResult);
    printf("\nSpecial characters = [ %d ]\n", othersResult);

    return 0;
}