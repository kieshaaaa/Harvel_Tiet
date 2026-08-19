#include <stdio.h>

int main() {
    float length = 5.0; // Direct assignment
    float width = 3.0;  // Direct assignment
    float height = 2.0; // Direct assignment
    float totalEdgeLength;

    // Calculate the total length of all edges
    totalEdgeLength = 4 * (length + width + height);

    // Display the total edge length
    printf("Total edge length (Perimeter) of the cuboid: ");
    printf("%.2f\n", totalEdgeLength);

    return 0;
}