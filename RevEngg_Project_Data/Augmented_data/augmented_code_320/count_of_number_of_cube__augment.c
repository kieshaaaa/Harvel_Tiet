#include <stdio.h>
#include <math.h>

int main() {
    int upperBound;
    int cubeCount = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &upperBound);

    cubeCount = (int)cbrt(upperBound);

    printf("The number of cube (perfect cube) numbers up to %d is: %d\n", upperBound, cubeCount);
    return 0;
}