#include <stdio.h>

int main() {
    float gradians, radians;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    radians = gradians * (3.14159 / 200.0); // Direct use of Pi value for conversion
    printf("Equivalent in radians: ");
    printf("%f\n", radians);
    return 0;
}