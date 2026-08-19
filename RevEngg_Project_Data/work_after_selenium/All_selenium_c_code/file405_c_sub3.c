#include <stdio.h>
#include <math.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Armstrong numbers between %d and %d are:\n", lower, upper);
    for (int i = lower; i <= upper; i++) {
        int temp = i, sum = 0, digits = 0, powSum = 1;
        // Determine the number of digits and the sum of digits raised to the nth power simultaneously
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        temp = i;
        while (temp != 0) {
            int remainder = temp % 10;
            powSum = 1; // Reset power sum for each digit
            for (int j = 0; j < digits; j++) {
                powSum *= remainder;
            }
            sum += powSum;
            temp /= 10;
        }
        if (sum == i) {
            printf("%d\n", i);
        }
    }
    return 0;
}