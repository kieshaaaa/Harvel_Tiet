#include<stdio.h>

int main() {
    char ch;
    printf("Enter a character to check :: ");
    scanf("%c", &ch);
    switch (ch) {
    case 'a': case 'e': case 'i': case 'o': case 'u':
    case 'A': case 'E': case 'I': case 'O': case 'U':
        printf("\nThe entered character %c is a vowel", ch);
        break;
    default:
        printf("\nThe entered character %c is not a vowel", ch);
    }
    return 0;
}