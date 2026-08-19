#include <stdio.h>

int main() {
    float millimeters;
    float inches;

    printf("Input millimeters: ");
    scanf("%f", &millimeters);

    inches = millimeters / 25.4;

    // Here we add rounding to the nearest hundredth
    inches = (int)(inches * 100 + 0.5) / 100.0;

    printf("Conversion: %f mm = %f inches\n", millimeters, inches);

    return 0;
}