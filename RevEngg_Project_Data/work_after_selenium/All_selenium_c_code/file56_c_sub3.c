#include <stdio.h>
#define PI 3.14159 // Slightly more precise PI

int main() {
    float gradians, radians;
    printf("Gradians to Radians Converter\n");
    printf("Input gradians: ");
    scanf("%f", &gradians);
    radians = gradians * (PI / 200);
    printf("Converted to radians: ");
    printf("%f\n", radians);
    return 0;
}