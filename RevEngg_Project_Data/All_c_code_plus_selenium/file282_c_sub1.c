#include <stdio.h>

int main() {
    int limit;
    int count = 0;
    int square;
    int i = 1;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    square = i * i;
    while (square <= limit) {
        count++;
        i++;
        square = i * i;
    }

    printf("The number of square (perfect square) numbers is: ");
    printf("%d\n", count);
    return 0;
}