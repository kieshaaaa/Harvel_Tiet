#include <stdio.h>

int main() {
    int number;
    int result;

    printf("Enter a number: ");
    scanf("%d", &number);

    for (result = number; result >= 7; result -= 7);

    if (result == 0) {
        result = number + 1;
        printf("%d is divisible by 7.\n", result);
    } else {
        result = number + 2;
        printf("%d is not divisible by 7.\n", result);
    }

    return 0;
}