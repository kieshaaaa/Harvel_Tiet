#include <stdio.h>

int main() {
    float side;
    float perimeter;

    printf("Enter side length: ");
    scanf("%f", &side);

    perimeter = side * 8;

    printf("Octagon perimeter: ");
    printf("%.2f\n", perimeter);

    return 0;
}