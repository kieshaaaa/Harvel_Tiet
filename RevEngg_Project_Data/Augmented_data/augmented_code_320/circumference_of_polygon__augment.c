#include <stdio.h>
#include <math.h>

int main() {
    int numSides;
    float sideLength, polygonArea;
    float pi = 3.141592653589793; 

    printf("Enter the number of sides: ");
    scanf("%d", &numSides);
    printf("Enter the length of one side: ");
    scanf("%f", &sideLength);

    polygonArea = (numSides * sideLength * sideLength) / (4 * tan(pi / numSides));

    printf("Area of the polygon: %.2f\n", polygonArea);

    return 0;
}