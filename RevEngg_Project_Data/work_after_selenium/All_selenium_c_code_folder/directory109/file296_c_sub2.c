#include <stdio.h>

int main() {
    int sidesCount;
    float sideLength, polygonPerimeter;

    printf("Input the sides count: ");
    scanf("%d", &sidesCount);

    printf("Input the length of a side: ");
    scanf("%f", &sideLength);

    polygonPerimeter = sidesCount * sideLength;

    printf("The polygon's perimeter is: ");
    printf("%.2f\n", polygonPerimeter);

    return 0;
}