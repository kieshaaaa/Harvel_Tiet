#include <stdio.h>

int main() {
    float length, width, height, totalEdgeLength;

    // Compact input
    printf("Enter length, width, and height of the cuboid separated by spaces: ");
    scanf("%f %f %f", &length, &width, &height);

    // Calculate the total length of all edges
    totalEdgeLength = 4 * (length + width + height);

    // Display the total edge length
    printf("Total edge length (Perimeter) of the cuboid: ");
    printf("%.2f\n", totalEdgeLength);

    return 0;
}