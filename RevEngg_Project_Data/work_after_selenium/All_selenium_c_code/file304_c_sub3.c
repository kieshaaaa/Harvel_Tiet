#include <stdio.h>

int main() {
    float side, perimeter;

    printf("Enter side length: ");
    scanf("%f", &side);

    perimeter = side * 4;

    printf("Perimeter: ");
    printf("%.2f\n", perimeter);

    return 0;
}