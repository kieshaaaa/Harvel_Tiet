#include <stdio.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for(int i = lower; i <= upper && i >= 0; i++) {
        int fact = 1;
        for(int j = 2; j <= i; j++) {
            fact *= j;
            if (fact <= 0) {
                break; // Breaking on first sign of overflow or invalid factorial
            }
        }
        if (fact > 0) {
            printf("Factorial of %d is %d\n", i, fact);
        }
        if(fact <= 0) {
            break;
        }
    }
    return 0;
}