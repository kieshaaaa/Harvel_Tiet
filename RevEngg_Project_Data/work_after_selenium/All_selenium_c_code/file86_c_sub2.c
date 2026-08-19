#include <stdio.h>
#include <math.h>

int main() {
    int limit, count = 0, squareSum = 0, odd = 1;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    while (squareSum + odd <= limit) {
        squareSum += odd;
        odd += 2; // The difference between consecutive squares is an odd number
        count++;
    }
    
    printf("The number of square (perfect square) numbers up to %d is: ", limit);
    printf("%d\n", count);
    return 0;
}