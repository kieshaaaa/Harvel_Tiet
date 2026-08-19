#include <stdio.h>
#include <math.h>

int main() {
    int limit;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    int count = (int)cbrt(limit); // Directly calculating the largest cube root that fits within the limit.

    printf("The number of cube (perfect cube) numbers up to ");
    printf("%d", limit);
    printf(" is: ");
    printf("%d\n", count);
    return 0;
}