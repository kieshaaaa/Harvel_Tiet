#include <stdio.h>
#include <math.h>

int main() {
    int limit, count = 0, i = 1;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);
    
    while (i * i <= limit) {
        count++;
        i++;
    }
    
    printf("The number of square (perfect square) numbers up to %d is: ", limit);
    printf("%d\n", count);
    return 0;
}