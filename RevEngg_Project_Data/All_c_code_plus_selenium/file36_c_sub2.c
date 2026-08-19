#include <stdio.h>

int main() {
    float inputWatts, outputHorsepower;

    printf("Welcome to the Power Conversion Tool!\n");
    printf("Please enter the power in Watts: ");
    scanf("%f", &inputWatts);

    outputHorsepower = inputWatts / 746.0f;

    printf("Equivalent Horsepower: %.2f\n", outputHorsepower);

    return 0;
}