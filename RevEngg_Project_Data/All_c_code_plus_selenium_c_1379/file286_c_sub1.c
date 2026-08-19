#include <stdio.h>

int main() {
    int number, result, divisible;
    printf("Enter a number: ");
    scanf("%d", &number);

    divisible = (number % 3 == 0) ? 1 : 0;
    result = number + (divisible ? 1 : 2);

    if (divisible) {
        printf("%d is divisible by 3.\n", result);
    } else {
        printf("%d is not divisible by 3.\n", result);
    }

    return 0;
}