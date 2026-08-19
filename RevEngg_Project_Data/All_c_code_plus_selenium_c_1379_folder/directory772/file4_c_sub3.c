#include <stdio.h>

int main() {
    float gradians;
    printf("Enter angle in gradians to convert to radians: ");
    scanf("%f", &gradians);
    float radians = gradians * (3.14159 / 200); // Slightly more accurate value of Pi
    printf("%f gradians = %f radians\n", gradians, radians);
    return 0;
}