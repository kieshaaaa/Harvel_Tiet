#include<stdio.h>

int main() {
    char ch;
    printf("Enter a character to check :: ");
    scanf("%c", &ch);
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' ||
        ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U') {
        printf("\nThe entered character %c is a vowel", ch);
    } else {
        printf("\nThe entered character %c is not a vowel", ch);
    }
    return 0;
}