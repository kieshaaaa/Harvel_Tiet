#include <stdio.h>
#include <math.h>

int main() {
    int limit;
    int count = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    // Calculate the number of square numbers up to the limit
    // The square root of the limit gives the highest base number whose square is less than or equal to the limit
    count = (int)sqrt(limit);

    printf("The number of square (perfect square) numbers up to %d is: %d\n", limit, count);
    return 0;
}
