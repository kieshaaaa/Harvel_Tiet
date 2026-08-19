#include <stdio.h>

int main() {
    float fahrenheit, celsius;
    printf("\nEnter value in Fahrenheit: ");
    scanf("%f", &fahrenheit);
    celsius = (fahrenheit - 32) * 5 / 9;
    printf("\nFahrenheit: %f = Celsius: %.4f\n", fahrenheit, celsius);
    return 0;
}