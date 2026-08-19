#include <stdio.h>

int main() {
    int number;
    printf("Enter a number: ");
    scanf("%d", &number);

    int divisible = (number % 5 == 0) ? 1 : 0;
    int result = divisible ? number + 1 : number + 2;
    
    if (divisible) {
        printf("%d is divisible by 5.\n", result);
    } else {
        printf("%d is not divisible by 5.\n", result);
    }

    return 0;
}