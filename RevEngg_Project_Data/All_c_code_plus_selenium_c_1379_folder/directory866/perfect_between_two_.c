#include <stdio.h>

int main() {
    int lower, upper, i, j, sum;
    
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Perfect numbers between %d and %d are:\n", lower, upper);
    for(i = lower; i <= upper; i++) {
        sum = 0;

        // Check each number i to see if it is a perfect number
        for(j = 1; j <= i/2; j++) {
            if(i % j == 0) {
                sum += j;
            }
        }

        // If the sum of divisors equals the number, it's a perfect number
        if(sum == i && i != 0) {
            printf("%d\n", i);
        }
    }

    return 0;
}
