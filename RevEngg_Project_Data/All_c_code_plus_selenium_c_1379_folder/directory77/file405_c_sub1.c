#include <stdio.h>
#include <math.h>

int main() {
    int lower, upper, i;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Armstrong numbers between %d and %d are:\n", lower, upper);
    for (i = lower; i <= upper; i++) {
        int temp = i, sum = 0, n = 0, remainder;
        // Calculate the number of digits in i
        while (temp > 0) {
            temp /= 10;
            n++;
        }
        temp = i;
        // Calculate the sum of the nth powers of its digits
        while (temp > 0) {
            remainder = temp % 10;
            sum += pow(remainder, n);
            temp /= 10;
        }
        if (sum == i) {
            printf("%d\n", i);
        }
    }
    return 0;
}