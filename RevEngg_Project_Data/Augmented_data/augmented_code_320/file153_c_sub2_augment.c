#include <stdio.h>

int main() {
    float fahrenheit, celsius, conversionFactor;
    printf("\nEnter value in Fahrenheit: ");
    scanf("%f", &fahrenheit);
    conversionFactor = 5.0 / 9.0;
    celsius = (fahrenheit - 32) * conversionFactor;
    printf("\nFahrenheit: %f = Celsius: %.4f\n", fahrenheit, celsius);
    return 0;
}