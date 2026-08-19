#include <stdio.h>

int main() {
    int lower, upper, j, i;
    float result;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for(j = lower; j <= upper && j >= 0; j++) {
        i = 2;
        result = 1.0;
        while(i <= j && result <= upper) {
            result *= i;
            if (result < 0) { // Checking for overflow
                result = -1;
                break;
            }
            i++;
        }
        
        if(result <= upper && result > 0) {
            printf("Factorial of %d is %.0f\n", j, result);
        } else {
            break;
        }
    }

    return 0;
}