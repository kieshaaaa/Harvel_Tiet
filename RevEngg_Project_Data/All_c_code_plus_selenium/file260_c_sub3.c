#include <stdio.h>

int main() {
    int lower, upper;
    int num;
    float n, temp, sqrt_val;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Triangular numbers between %d and %d are:\n", lower, upper);
    for (num = lower; num <= upper; num++) {
        temp = 1 + 8 * num;
        sqrt_val = temp / 2;
        for (int i = 0; i < 10; ++i) {  // Newton's method approximation
            sqrt_val = (sqrt_val + temp / sqrt_val) / 2;
        }
        n = (-1 + sqrt_val) / 2;
        if ((int)n == n) {
            printf("%d\n", num);
        }
    }

    return 0;
}