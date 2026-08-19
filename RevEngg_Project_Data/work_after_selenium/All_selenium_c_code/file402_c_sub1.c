#include <stdio.h>
#include <math.h>

int main() {
    int limit;
    float cubeRoot;
    int count;

    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    cubeRoot = pow(limit, 1.0/3.0);
    count = (int)cubeRoot;

    printf("The number of cube (perfect cube) numbers up to ");
    printf("%d is: %d\n", limit, count);
    return 0;
}