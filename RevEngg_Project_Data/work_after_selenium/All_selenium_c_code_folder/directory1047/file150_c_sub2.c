#include <stdio.h>

int main() {
    int number;
    char bin[33]; // One extra for the null terminator.
    bin[32] = '\0'; // Null terminate the string.

    printf("Enter decimal number: ");
    scanf("%d", &number);

    // Fill the string with binary digits from the end.
    for (int i = 31; i >= 0; i--) {
        bin[i] = '0' + (number & 1);
        number >>= 1;
    }

    // Find the index of the first '1' to avoid leading zeros.
    int startIndex = 0;
    while (startIndex < 32 && bin[startIndex] == '0') startIndex++;

    printf("Binary value is: ");
    if (startIndex == 32) // The number is 0.
        printf("0");
    else
        printf("%s", &bin[startIndex]);
    printf("\n");

    return 0;
}