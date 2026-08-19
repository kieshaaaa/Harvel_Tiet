#include <stdio.h>
#include <math.h>

int main() {
    float x;
    float result;
    printf("Enter the value of x: ");
    scanf("%f", &x); // Adjusted for float

    result = expf(x); // Use expf for float

    printf("%f e^x = %f\n", x, result); // Corrected format specifier
    return 0;
}