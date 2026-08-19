#include <stdio.h>

int main() {
    float gradians, degrees;
    printf("Enter angle in gradians: ");
    scanf("%f", &gradians);
    degrees = gradians * (180.0 / 200.0);
    printf(" gradians is %f degrees.\n", degrees);
    return 0;
}
