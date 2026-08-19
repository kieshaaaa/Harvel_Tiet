#include <stdio.h>

int main() {
    float cel, fah;
    printf("\nEnter value in Fahrenheit: ");
    scanf("%f", &fah);
    cel = (fah - 32) / 1.8; // 1.8 is the direct result of 9/5
    printf("\nFahrenheit: %f = Celsius: %.4f\n", fah, cel);
    return 0;
}