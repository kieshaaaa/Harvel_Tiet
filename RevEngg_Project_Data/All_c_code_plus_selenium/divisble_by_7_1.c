#include <stdio.h>

int main() {
    int number;
    int temp;
    int result;

    // Ask the user to input a number
    printf("Enter a number: ");
    scanf("%d", &number);

    // Make a temporary copy of the number
    temp = number;

    // Continuously subtract 7 until the number is less than 7
    while (temp >= 7) {
        temp -= 7;
    }

    // Check if the resulting number is 0
    if (temp == 0) {
        result = number + 1;
        printf("%d is divisible by 7.\n", result);
    } else {
        result = number + 2;
        printf("%d is not divisible by 7.\n", result);
    }

    return 0;
}
