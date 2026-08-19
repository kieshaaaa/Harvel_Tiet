#include <stdio.h>

int main() {
    float lengthInMeters, lengthInYards;

    printf("This program converts meters to yards.\n");
    printf("Please input the length in meters: ");
    scanf("%f", &lengthInMeters);

    lengthInYards = lengthInMeters * 1.09;

    printf("The length in yards is: %f\n", lengthInYards);

    return 0;
}