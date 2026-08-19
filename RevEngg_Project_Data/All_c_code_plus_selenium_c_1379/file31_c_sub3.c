#include <stdio.h>

int main() {
    int number, result, condition;
    printf("Enter a number: ");
    scanf("%d", &number);

    // Determine condition: 0 for divisible by 7, 1 otherwise
    condition = (number % 7 == 0) ? 0 : 1;

    switch (condition) {
        case 0:
            result = number + 1;
            break;
        default:
            result = number + 2;
    }
    
    if (condition == 0) {
        printf("%d is divisible by 7.\n", result);
    } else {
        printf("%d is not divisible by 7.\n", result);
    }

    return 0;
}