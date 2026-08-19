#include <stdio.h>
#include <math.h>

int main() {
    int limit;
    int count = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    // Calculate the number of cube numbers up to the limit
    // The cube root of the limit gives the highest base number whose cube is less than or equal to the limit
    count = (int)cbrt(limit);

    printf("The number of cube (perfect cube) numbers up to %d is: %d\n", limit, count);
    return 0;
}
