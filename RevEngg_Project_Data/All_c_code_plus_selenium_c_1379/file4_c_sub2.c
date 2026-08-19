#include <stdio.h>

int main() {
    float gradians, radians;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    radians = gradians * 0.015707963267948966; // Directly using the result of 3.14/200
    printf("%f gradians is %f radians.\n", gradians, radians);
    return 0;
}