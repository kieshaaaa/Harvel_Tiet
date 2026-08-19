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

    num = lower;
    if (num <= upper) {
        printf("Triangular numbers between %d and %d are:\n", lower, upper);
    }
    do {
        n = (-1 + sqrtf(1 + 8 * num)) / 2;
        if (floorf(n) == n) {
            printf("%d\n", num);
        }
        num++;
    } while (num <= upper);

    return 0;
}