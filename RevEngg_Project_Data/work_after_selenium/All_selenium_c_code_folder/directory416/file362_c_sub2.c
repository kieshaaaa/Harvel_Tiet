#include <stdio.h>
#include <stdlib.h>

int main() {
    int sum = 0;
    // First multiple of 8 within the range
    int first = 8; 
    // Last multiple of 8 within the range
    int last = 400 - (400 % 8);
    // Calculate the count of multiples directly
    sum = (last - first) / 8 + 1;
    printf("The sum of the multiples of 8 is ");
    printf("%i\n", sum);
    return 0;
}