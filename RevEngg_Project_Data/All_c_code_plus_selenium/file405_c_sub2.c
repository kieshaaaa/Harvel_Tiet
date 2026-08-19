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
        int sum = 0, original = i, n = 0;
        for (int temp = i; temp > 0; temp /= 10, n++);
        for (int temp = i; temp > 0; temp /= 10) {
            int digit = temp % 10;
            sum += pow(digit, n);
        }
        if (sum == original) {
            printf("%d\n", original);
        }
    }
    return 0;
}