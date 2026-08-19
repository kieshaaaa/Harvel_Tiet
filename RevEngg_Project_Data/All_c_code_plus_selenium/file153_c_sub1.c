#include <stdio.h>

int main() {
    float cel, fah;
    printf("\nEnter value in Fahrenheit: ");
    scanf("%f", &fah);
    cel = (fah - 32) * 5 / 9;
    printf("\nFahrenheit: %f = Celsius: %.4f\n", fah, cel);
    return 0;
}