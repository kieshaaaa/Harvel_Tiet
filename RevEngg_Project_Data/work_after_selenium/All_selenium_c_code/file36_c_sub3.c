#include <stdio.h>

int main() {
    float powerWatts, powerHorsepower;
    float conversionFactor = 746.0f;

    printf("Power Converter:\nEnter power in Watts: ");
    scanf("%f", &powerWatts);

    powerHorsepower = powerWatts / conversionFactor;

    printf("Power in Horsepower: %.2f\n", powerHorsepower);

    return 0;
}