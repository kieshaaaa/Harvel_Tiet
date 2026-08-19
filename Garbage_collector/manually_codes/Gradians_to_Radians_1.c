#include <stdio.h>


int main() {
    float gradians, radians;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    radians = gradians * (3.14 / 200.0);
    printf(" gradians is %f radians.\n", radians);
    return 0;
}
