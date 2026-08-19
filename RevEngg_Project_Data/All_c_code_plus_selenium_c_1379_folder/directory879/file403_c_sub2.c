#include <stdio.h>

int main() {
    int num, isDivisible = 0;
    printf("Enter a number: ");
    scanf("%d", &num);

    if (num % 7 == 0) {
        isDivisible = 1;
    }
    if (num % 3 == 0) {
        isDivisible = 1;
    }

    if (isDivisible) {
        printf("The number %d is divisible by 7 or 3.\n", num);
    } else {
        printf("The number %d is not divisible by 7 or 3.\n", num);
    }

    return 0;
}