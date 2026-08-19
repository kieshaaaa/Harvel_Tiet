#include <stdio.h>

int main() {
    float side;
    printf("Enter side length: ");
    scanf("%f", &side);

    float perimeter = side * 5;
    printf("Pentagon perimeter: ");
    printf("%.2f\n", perimeter);

    return 0;
}