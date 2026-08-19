#include <stdio.h>
#define PI 3.14

int main() {
    float gradians, radians;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    radians = gradians * (PI / 200.0);
    printf("gradians is %f radians.\n", radians);
    return 0;
}
