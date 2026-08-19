#include <stdio.h>

int main() {
    int number;
    int temp;
    int result;

    printf("Enter a number: ");
    scanf("%d", &number);

    temp = number;

    do {
        if (temp < 7) break;
        temp -= 7;
    } while (temp >= 7);

    if (temp == 0) {
        result = number + 1;
        printf("%d is divisible by 7.\n", result);
    } else {
        result = number + 2;
        printf("%d is not divisible by 7.\n", result);
    }

    return 0;
}