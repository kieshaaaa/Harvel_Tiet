#include <stdio.h>

#define CONVERSION_FACTOR 25.4

int main() {
    float mm, inches;

    printf("Enter length in millimeters: ");
    scanf("%f", &mm);

    inches = mm / CONVERSION_FACTOR;

    printf("Equivalent inches: ");
    printf("%.2f\n", inches);

    return 0;
}