#include <stdio.h>
#include <math.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Triangular numbers between %d and %d are:\n", lower, upper);

    for (int num = lower; num <= upper; num++) {
        double n = (-1 + sqrt(1 + 8 * num)) / 2;
        if (floor(n) == n) {
            printf("%d\n", num);
        }
    }

    return 0;
}