#include <stdio.h>

int main() {
    int number, result;
    printf("Enter a number: ");
    scanf("%d", &number);

    switch (number % 3) {
        case 0:
            result = number + 1;
            printf("%d is divisible by 3.\n", result);
            break;
        default:
            result = number + 2;
            printf("%d is not divisible by 3.\n", result);
    }

    return 0;
}