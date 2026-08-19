#include <stdio.h>

int main() {
    float celsius = 36.6f;
    float fahrenheit;

    fahrenheit = (celsius * 9 / 5) + 32;

    printf("Temperature in Celsius: %f\n", celsius);
    printf("Temperature in Fahrenheit: %f\n", fahrenheit);

    return 0;
}