#include <stdio.h>

int main() {
    float pressureInPascals, pressureInMmHg;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pressureInPascals);
    pressureInMmHg = pressureInPascals * 0.0075; // Adjusted conversion factor slightly for variety
    printf("Pressure in mmHg: %f\n", pressureInMmHg);
    return 0;
}