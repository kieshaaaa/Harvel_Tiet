#include <stdio.h>

int main() {
    int number;
    int result;
    // Ask the user to input a number
    printf("Enter a number: ");
    scanf("%d", &number);

    // Check if the number is divisible by 3
    if (number % 3 == 0) {
        result = number + 1;
        printf("%d is divisible by 3.\n", result);
    } else {
        result = number + 2;
        printf("%d is not divisible by 3.\n", result);
    }

    return 0;
}
