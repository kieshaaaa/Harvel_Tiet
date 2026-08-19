#include <stdio.h>

int main() {
    float fahrenheit, celsius;
    printf("\nEnter value in Fahrenheit: ");
    scanf("%f", &fahrenheit);
    celsius = (fahrenheit - 32) / 1.8; // 1.8 is the direct result of 9/5
    printf("\nFahrenheit: %f = Celsius: %.4f\n", fahrenheit, celsius);
    return 0;
}