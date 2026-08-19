#include <stdio.h>

int main() {
    float a, b, c, p;

    printf("Enter the length of the first side of the triangle: ");
    scanf("%f", &a);
    printf("Enter the length of the second side of the triangle: ");
    scanf("%f", &b);
    printf("Enter the length of the third side of the triangle: ");
    scanf("%f", &c);

    p = a + b + c;

    printf("Perimeter of the triangle: %.2f\n", p);

    return 0;
}