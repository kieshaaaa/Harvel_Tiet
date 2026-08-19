#include <stdio.h>
#include <math.h>

int main() {
    int lower, upper;
    int num;
    float n;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Triangular numbers between %d and %d are:\n", lower, upper);
    num = lower;
    while (num <= upper) {
        n = (-1 + sqrtf(1 + 8 * num)) / 2;
        if (floorf(n) == n) {
            printf("%d\n", num);
        }
        num++;
    }

    return 0;
}