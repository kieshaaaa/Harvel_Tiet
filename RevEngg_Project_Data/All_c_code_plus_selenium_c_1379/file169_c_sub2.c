#include <stdio.h>

#define PI 3.14f

int main() {
    float degrees, radians, conversionFactor;
    conversionFactor = PI / 180.0f;
    
    printf("Enter angle in degrees: ");
    scanf("%f", &degrees);
    
    radians = degrees * conversionFactor;
    
    printf("Angle in radians: ");
    printf("%f\n", radians);
    return 0;
}