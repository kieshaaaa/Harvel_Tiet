#include <stdio.h>

int main() {
    float firstReal, firstImag, secondReal, secondImag, totalReal, totalImag;
    printf("Enter the real part of the first complex number: ");
    scanf("%f", &firstReal);
    printf("Enter the imaginary part of the first complex number: ");
    scanf("%f", &firstImag);

    printf("Enter the real part of the second complex number: ");
    scanf("%f", &secondReal);
    printf("Enter the imaginary part of the second complex number: ");
    scanf("%f", &secondImag);

    totalReal = firstReal + secondReal;
    totalImag = firstImag + secondImag;

    printf("The result of the addition is: %f + %fi\n", totalReal, totalImag);
    return 0;
}