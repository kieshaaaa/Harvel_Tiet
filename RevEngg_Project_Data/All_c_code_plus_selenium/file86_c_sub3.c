#include <stdio.h>
#include <math.h>

int main() {
    int limit, count;
    float limitFloat;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);
    limitFloat = (float)limit;

    // Adjust count to not exceed limit when square root rounds up
    count = (int)ceil(sqrtf(limitFloat)) - 1;

    printf("The number of square (perfect square) numbers up to %d is: ", limit);
    printf("%d\n", count);
    return 0;
}