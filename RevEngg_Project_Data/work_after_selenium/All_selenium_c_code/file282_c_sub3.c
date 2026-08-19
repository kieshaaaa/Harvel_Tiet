#include <stdio.h>

int main() {
    int limit;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    int lastSquareRoot = (int)sqrt((float)limit);
    int count = lastSquareRoot;

    printf("The number of square (perfect square) numbers is: ");
    printf("%d\n", count);
    return 0;
}