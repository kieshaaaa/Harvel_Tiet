#include <stdio.h>

int main() {
    int number;
    int result;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number % 7 == 0) {
        result = number + 1;
        printf("%d is divisible by 7.\n", result);
    } else {
        result = number + 2;
        printf("%d is not divisible by 7.\n", result);
    }

    return 0;
}