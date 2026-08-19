#include <stdio.h>

int main() {
    float dimensions[3]; // 0: length, 1: width, 2: height
    const char* dimensionNames[] = {"length", "width", "height"};
    float totalEdgeLength = 0.0;
    
    // Loop for input
    for (int i = 0; i < 3; i++) {
        printf("Enter the %s of the cuboid: ", dimensionNames[i]);
        scanf("%f", &dimensions[i]);
    }

    // Calculate the total length of all edges
    for (int i = 0; i < 3; i++) {
        totalEdgeLength += dimensions[i];
    }
    totalEdgeLength *= 4;

    // Display the total edge length
    printf("Total edge length (Perimeter) of the cuboid: ");
    printf("%.2f\n", totalEdgeLength);

    return 0;
}