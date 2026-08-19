#include <stdio.h>

int main() {
    int number, result;
    printf("Enter a number: ");
    scanf("%d", &number);

    result = (number % 7 == 0) ? number + 1 : number + 2;
    
    if (number % 7 == 0) {
        printf("%d is divisible by 7.\n", result);
    } else {
        printf("%d is not divisible by 7.\n", result);
    }

    return 0;
}