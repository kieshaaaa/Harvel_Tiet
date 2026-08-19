#include <stdio.h>

int main() {
    float side;
    float perimeter;

    printf("Enter the side length of the square: ");
    scanf("%f", &side);

    perimeter = side + side + side + side;

    printf("Perimeter of the square: ");
    printf("%.2f\n", perimeter);

    return 0;
}