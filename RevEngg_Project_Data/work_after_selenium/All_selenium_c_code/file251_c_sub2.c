#include <stdio.h>

#define MAX_SIZE 100

int main() {
    char string[MAX_SIZE];
    int alphabets = 0, digits = 0, others = 0;

    printf("\nEnter any string: ");
    fgets(string, MAX_SIZE, stdin);

    for(int i = 0; string[i] != '\0'; i++) {
        switch(string[i]) {
            case 'a' ... 'z':
            case 'A' ... 'Z':
                alphabets++;
                break;
            case '0' ... '9':
                digits++;
                break;
            default:
                others++;
        }
    }

    printf("\nAlphabets = [ %d ]", alphabets);
    printf("\nDigits = [ %d ]", digits);
    printf("\nSpecial characters = [ %d ]\n", others);

    return 0;
}