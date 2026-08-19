#include <stdio.h>
#include <math.h>

int isTriangular(int num) {
    if (num < 0) return 0;

    // Calculate the term number using the inverse of triangular number formula
    // The formula is derived from solving the quadratic equation n^2 + n - 2*num = 0
    n = (-1 + sqrt(1 + 8 * num)) / 2;

    // Check if n is an integer
    return n == (int)n;
}

int main() {
    int lower, upper;
    int num;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Triangular numbers between %d and %d are:\n", lower, upper);
    for (num = lower; num <= upper; num++) {
        if (isTriangular(num)) {
            printf("%d\n", num);
        }
    }

    return 0;
}
