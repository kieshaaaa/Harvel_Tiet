#include <stdio.h>

int main() {
    float pressureInPascals, pressureInBar;
    printf("This program converts pressure from Pascals to Bar.\n");
    printf("Please enter the pressure in Pascals: ");
    scanf("%f", &pressureInPascals);
    pressureInBar = pressureInPascals / 100000;
    printf("Pressure in bar: %f\n", pressureInBar);
    return 0;
}