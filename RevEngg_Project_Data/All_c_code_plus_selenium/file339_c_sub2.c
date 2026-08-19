#include <stdio.h>

int main() {
    float a, b, c, temp;

    printf("Enter a: ");
    scanf("%f", &a);
    printf("Enter b: ");
    scanf("%f", &b);
    printf("Enter c: ");
    scanf("%f", &c);

    printf("\nValues Before swapping:\n");
    printf("a = %.2f\tb = %.2f\tc = %.2f\n", a, b, c);

    // Swapping in cyclic order using a single temporary variable
    temp = a;
    a = b;
    b = c;
    c = temp;

    printf("\nValues After swapping:\n");
    printf("a = %.2f\tb = %.2f\tc = %.2f\n", a, b, c);

    return 0;
}