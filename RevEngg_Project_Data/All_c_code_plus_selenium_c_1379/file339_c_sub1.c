#include <stdio.h>

int main() {
    float a, b, c;
    float temp1, temp2;

    printf("Enter a: ");
    scanf("%f", &a);
    printf("Enter b: ");
    scanf("%f", &b);
    printf("Enter c: ");
    scanf("%f", &c);

    printf("\nValues Before swapping:\n");
    printf("a = %.2f\tb = %.2f\tc = %.2f\n", a, b, c);

    // Swapping in cyclic order using two temporary variables
    temp1 = b;
    temp2 = c;
    b = a;
    c = temp1;
    a = temp2;

    printf("\nValues After swapping:\n");
    printf("a = %.2f\tb = %.2f\tc = %.2f\n", a, b, c);

    return 0;
}