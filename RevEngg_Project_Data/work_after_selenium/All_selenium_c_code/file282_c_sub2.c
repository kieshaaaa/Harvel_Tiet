#include <stdio.h>

int main() {
    int limit;
    int count = 0;
    printf("Enter a positive integer: ");
    scanf("%d", &limit);

    for (int i = 1; i * i <= limit; i++) {
        count++;
    }

    printf("The number of square (perfect square) numbers is: ");
    printf("%d\n", count);
    return 0;
}