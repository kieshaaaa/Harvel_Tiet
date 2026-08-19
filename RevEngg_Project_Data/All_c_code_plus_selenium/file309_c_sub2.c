#include <stdio.h>

int main() {
    float kmph, knots, conversionFactor;
    conversionFactor = 1.852;
    printf("Enter speed in kilometers per hour: ");
    scanf("%f", &kmph);
    knots = kmph / conversionFactor;
    printf("The speed in knots is ");
    printf("%f\n", knots);
    return 0;
}