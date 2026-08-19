#include <stdio.h>

#define CM_PER_INCH 2.54

int main() {
    float inches, centimeters;
    printf("Enter inches: ");
    scanf("%f", &inches);
    centimeters = inches * CM_PER_INCH;
    printf("Centimeters: %.4f\n", centimeters);
    return 0;
}