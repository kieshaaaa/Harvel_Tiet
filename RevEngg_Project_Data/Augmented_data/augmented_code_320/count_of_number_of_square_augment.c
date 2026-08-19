#include <stdio.h>
#include <math.h>

int main() {
    int max_num;
    int num_squares = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &max_num);

    // Calculate the number of square numbers up to the limit
    // The square root of the limit gives the highest base number whose square is less than or equal to the limit
    num_squares = (int)sqrt(max_num);

    printf("The number of square (perfect square) numbers up to %d is: %d\n", max_num, num_squares);
    return 0;
}