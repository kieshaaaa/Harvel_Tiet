#include <stdio.h>

int factorial(int n) {
    int result = 1;
    int i;
    for (i = 2; i <= n; ++i) {
        result *= i;
        if (result < 0) {
            // This indicates an overflow has occurred
            return -1; 
        }
    }
    return result;
}

int main() {
    int lower, upper;
    int j;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for(j = lower; j <= upper && j >= 0; j++) {
        int fact = factorial(j);
        if(fact <= upper && fact > 0) {
            printf("Factorial of %d is %d\n", j, fact);
        } else {
            // Either the factorial exceeds the upper limit, or an overflow occurred
            break;
        }
    }

    return 0;
}
