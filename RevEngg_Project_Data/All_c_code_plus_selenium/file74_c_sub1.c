#include <stdio.h>

int main() {
    int x, y;

    printf("Enter the first number: ");
    scanf("%d", &x);
    printf("Enter the second number: ");
    scanf("%d", &y);

    printf("Before swapping: x = %d, y = %d\n", x, y);

    // Swapping
    x = x - y;
    y = x + y;
    x = y - x;

    printf("After swapping: x = %d, y = %d\n", x, y);

    return 0;
}