#include <stdio.h>
#include <math.h>

int main() {
    float side, area, root3, constantPart;

    printf("Enter the length of the side: ");
    scanf("%f", &side);

    root3 = sqrt(3);
    constantPart = 3 * root3 / 2;
    area = constantPart * side * side;

    printf("Area of the hexagon: ");
    printf("%.2f\n", area);

    return 0;
}