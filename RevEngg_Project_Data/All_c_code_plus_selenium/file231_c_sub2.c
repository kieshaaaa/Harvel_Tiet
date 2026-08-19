#include<stdio.h>

int main() {
    char ch;
    printf("Enter a character to check :: ");
    scanf("%c", &ch);
    switch (ch) {
    case 'a': case 'A':
    case 'e': case 'E':
    case 'i': case 'I':
    case 'o': case 'O':
    case 'u': case 'U':
        printf("\nThe entered character %c is a vowel", ch);
        break;
    default:
        printf("\nThe entered character %c is not a vowel", ch);
    }
    return 0;
}