#include <stdio.h>

int main() {
    float cel, fah, conversionFactor;
    printf("\nEnter value in Fahrenheit: ");
    scanf("%f", &fah);
    conversionFactor = 5.0 / 9.0;
    cel = (fah - 32) * conversionFactor;
    printf("\nFahrenheit: %f = Celsius: %.4f\n", fah, cel);
    return 0;
}