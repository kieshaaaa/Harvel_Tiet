#include <stdio.h>

int main() {
    float temperature, convertedTemperature;
    int choice;

    printf("\n1: Fahrenheit to Celsius.");
    printf("\n2: Celsius to Fahrenheit.\n");
    printf("\nChoice (1/2): ");
    scanf("%d", &choice);

    if (choice == 1) {
        printf("\nEnter Fahrenheit: ");
        scanf("%f", &temperature);
        convertedTemperature = (temperature - 32) / 1.8;
        printf("\nCelsius: %.2f", convertedTemperature);
    } else if (choice == 2) {
        printf("\nEnter Celsius: ");
        scanf("%f", &temperature);
        convertedTemperature = (temperature * 1.8) + 32;
        printf("\nFahrenheit: %.2f", convertedTemperature);
    } else {
        printf("\nInvalid choice.");
    }
    return 0;
}