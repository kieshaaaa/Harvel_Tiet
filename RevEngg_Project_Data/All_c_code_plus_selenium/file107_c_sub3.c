#include <stdio.h>

int main() {
    float mm, in;
    const float conversionFactor = 25.4;

    printf("Millimeters: ");
    scanf("%f", &mm);

    in = mm / conversionFactor;

    printf("Inches: %f\n", in);

    return 0;
}