#include <stdio.h>

int main() {
    int factorial, min, max, i, j;
    printf("Enter the lower bound: ");
    scanf("%d", &min);
    printf("Enter the upper bound: ");
    scanf("%d", &max);

    i = min;
    while(i <= max) {
        factorial = 1;
        j = 2;
        while(j <= i) {
            factorial = factorial * j;
            if (factorial < 0) {
                // Break out of the loop if an overflow occurs
                factorial = -1;
                break;
            }
            j++;
        }
        if(factorial > 0 && factorial <= max) {
            printf("Factorial of %d is %d\n", i, factorial);
        } else {
            // Stop if the factorial calculation overflowed or exceeded the upper limit
            break;
        }
        i++;
    }

    return 0;
}