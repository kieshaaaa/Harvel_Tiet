#include <stdio.h>

int main() {
    int number, result, isDivisible;
    printf("Enter a number: ");
    scanf("%d", &number);

    isDivisible = (number % 3 == 0);
    if (isDivisible) {
        result = number + 1;
    } else {
        result = number + 2;
    }

    printf("%d ", result);
    if (isDivisible) {
        printf("is divisible by 3.\n");
    } else {
        printf("is not divisible by 3.\n");
    }

    return 0;
}