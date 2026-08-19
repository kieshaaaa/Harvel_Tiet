#include <stdio.h>

int main() {
    char ch;
    printf("Enter any character: ");
    scanf("%c", &ch);

    // Implicit conversion by assigning to int
    int asciiValue = ch;
    printf("ASCII value of character: ");
    printf("%c", ch);
    printf(" is: ");
    printf("%d\n", asciiValue);

    return 0;
}