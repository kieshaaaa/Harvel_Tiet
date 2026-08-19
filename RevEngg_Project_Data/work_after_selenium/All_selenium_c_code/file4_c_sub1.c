#include <stdio.h>

int main() {
    const float PI = 3.14159265;
    float gradians, radians;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    radians = gradians * (PI / 200.0);
    printf("%f gradians is %f radians.\n", gradians, radians);
    return 0;
}