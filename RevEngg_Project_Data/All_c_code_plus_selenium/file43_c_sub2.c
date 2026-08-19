#include <stdio.h>

int main() {
    char fullName[100];
    printf("Enter your Name: ");
    scanf("%[^\n]%*c", fullName);

    for(int j = 0; fullName[j] != '\0'; j++) {
        if(fullName[j] == 'a' || fullName[j] == 'e' || fullName[j] == 'i' || fullName[j] == 'o' || fullName[j] == 'u') {
            fullName[j] -= 'a' - 'A';
        } else if(fullName[j] == 'A' || fullName[j] == 'E' || fullName[j] == 'I' || fullName[j] == 'O' || fullName[j] == 'U') {
            // Vowels are already uppercase
        } else {
            // Not a vowel, do nothing
        }
    }

    printf("Processed Name: ");
    printf("%s\n", fullName);

    return 0;
}