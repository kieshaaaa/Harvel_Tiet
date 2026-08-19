#include <stdio.h>

int main() {
    float side;
    float perimeter;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    float multipliedSide = side * 6;
    perimeter = multipliedSide;

    printf("Perimeter of the hexagon: ");
    printf("%.2f\n", perimeter);

    return 0;
}