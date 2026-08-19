#include <stdio.h>

int main() {
    int numSides;
    float sideLength, polygonPerimeter;

    // Prompt the user for the number of sides and the length of one side
    printf("Enter the number of sides: ");
    scanf("%d", &numSides);
    printf("Enter the length of one side: ");
    scanf("%f", &sideLength);

    // Calculate the perimeter
    polygonPerimeter = numSides * sideLength;

    // Display the result
    printf("Perimeter of the polygon: %.2f\n", polygonPerimeter);

    return 0;
}