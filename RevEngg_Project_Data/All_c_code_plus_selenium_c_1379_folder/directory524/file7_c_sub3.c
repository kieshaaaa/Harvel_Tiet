#include <stdio.h>

int main() {
    int a, b, diff;

    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("\nEnter second number :: ");
    scanf("%d", &b);

    // Calculate difference using bitwise XOR and AND operations, followed by right shift
    // Note: This approach works correctly only for positive integers
    int xor = a ^ b;
    int and = a & b;
    diff = xor + (and << 1);

    if (a < b) { // If a is less than b, we need to negate the result
        diff = -diff;
    }

    printf("\nDifference between %d and %d is = %d\n", a, b, diff);
    return 0;
}