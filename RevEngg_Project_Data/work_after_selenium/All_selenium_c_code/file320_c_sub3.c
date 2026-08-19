#include<stdio.h>

int main() {
    int num, digitCount = 0, n;
    printf("Enter any number :: ");
    scanf("%d", &num);

    n = num;
    // Count the number of digits
    while (n > 0) {
        digitCount++;
        n /= 10;
    }

    // Array to hold the words for each digit
    char *words[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
    int digits[digitCount];
    n = num;

    // Extract digits and store them
    for (int i = 0; i < digitCount; i++) {
        digits[digitCount - 1 - i] = n % 10;
        n /= 10;
    }

    // Print words for each digit
    for (int i = 0; i < digitCount; i++) {
        printf("%s ", words[digits[i]]);
    }

    return 0;
}