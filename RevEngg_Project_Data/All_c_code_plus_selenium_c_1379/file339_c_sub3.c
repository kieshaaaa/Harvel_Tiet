#include <stdio.h>

int main() {
    float a, b, c;

    printf("Enter a: ");
    scanf("%f", &a);
    printf("Enter b: ");
    scanf("%f", &b);
    printf("Enter c: ");
    scanf("%f", &c);

    printf("\nValues Before swapping:\n");
    printf("a = %.2f\tb = %.2f\tc = %.2f\n", a, b, c);

    // Swapping using arithmetic operations (Note: This method could introduce rounding errors for non-integer values)
    a = a + b + c;
    c = a - (b + c);
    b = a - (b + c);
    a = a - (b + c);

    printf("\nValues After swapping:\n");
    printf("a = %.2f\tb = %.2f\tc = %.2f\n", a, b, c);

    return 0;
}