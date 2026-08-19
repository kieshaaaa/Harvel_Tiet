#include <stdio.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for (int j = lower; j <= upper && j >= 0; j++) {
        float fact = 1.0;
        int overflow = 0; // Flag to indicate overflow
        for (int i = 2; i <= j; i++) {
            fact *= i;
            if (fact < 0) { // Checking for overflow
                overflow = 1;
                break;
            }
        }
        
        if (!overflow && fact <= upper && fact > 0) {
            printf("Factorial of %d is %.0f\n", j, fact);
        } else {
            break;
        }
    }

    return 0;
}