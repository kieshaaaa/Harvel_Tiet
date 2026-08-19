#include <stdio.h>
#include <math.h>

int main() {
    int sides;
    float sideLength, polygonArea, tanValue;

    printf("Enter the number of sides: ");
    scanf("%d", &sides);
    printf("Enter the length of one side: ");
    scanf("%f", &sideLength);

    tanValue = tan(M_PI / sides);
    polygonArea = (sides * sideLength * sideLength) / (4 * tanValue);

    printf("Area of the polygon: ");
    printf("%.2f\n", polygonArea);

    return 0;
}