#include <stdio.h>

int main() {
    char ch;
    printf("Enter any character: ");
    scanf("%c", &ch);

    // Adding 0 converts char to its ASCII int representation
    int asciiValue = ch + 0;
    printf("ASCII value of character: ");
    printf("%c", ch);
    printf(" is: ");
    printf("%d\n", asciiValue);

    return 0;
}