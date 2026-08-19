#include <stdio.h>

int main() {
    int number, result;
    printf("Enter a number: ");
    scanf("%d", &number);

    if (number % 7 == 0) {
        result = number + 1;
    } else if (number % 5 == 0) { // Additional condition for demonstration
        result = number + 3;
        printf("%d is divisible by 5 but not by 7.\n", result);
        return 0;
    } else {
        result = number + 2;
    }
    
    printf("%d.\n", result);

    return 0;
}