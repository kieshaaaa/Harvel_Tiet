#include <stdio.h>
#include <math.h>

int main() {
    float x;
    float result;
    printf("Enter the value of x: ");
    scanf("%f", &x);

    result = powf(M_E, x); // Calculate e^x manually using powf

    printf("%f e^x = %f\n", x, result);
    return 0;
}