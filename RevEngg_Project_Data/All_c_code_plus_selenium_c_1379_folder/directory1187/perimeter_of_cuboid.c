#include <stdio.h>

int main() {
    float length, width, height, totalEdgeLength;

    // Input length, width, and height
    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);
    printf("Enter the width of the cuboid: ");
    scanf("%f", &width);
    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    // Calculate the total length of all edges
    totalEdgeLength = 4 * (length + width + height);

    // Display the total edge length
    printf("Total edge length (Perimeter) of the cuboid: %.2f\n", totalEdgeLength);

    return 0;
}
