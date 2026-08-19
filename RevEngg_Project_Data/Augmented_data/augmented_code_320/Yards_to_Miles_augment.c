#include <stdio.h>

int main() {
    float distanceYards, distanceMiles;

    printf("Enter the length in yards: ");
    scanf("%f", &distanceYards);

    distanceMiles = distanceYards / 1760.0;

    printf(" yards is equal to %.2f miles.\n", distanceMiles);

    return 0;
}