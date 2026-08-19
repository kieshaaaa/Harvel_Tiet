#include <stdio.h>

int main() {
    int fact, lower, upper, i , j;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for(i = lower; i <= upper; i++) {
        fact = 1;
        for(j = 2; j <= i; j++) {
            fact = fact * j;
            if (fact < 0) {
                // Break out of the loop if an overflow occurs
                fact = -1;
                break;
            }
        }
        if(fact > 0 && fact <= upper) {
            printf("Factorial of %d is %d\n", i, fact);
        } else {
            // Stop if the factorial calculation overflowed or exceeded the upper limit
            break;
        }
    }

    return 0;
}
