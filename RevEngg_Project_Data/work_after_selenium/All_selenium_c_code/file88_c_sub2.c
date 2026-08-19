#include <stdio.h>

int main() {
    float aReal, aImag, bReal, bImag, sumReal, sumImag;
    printf("Input Real and Imaginary parts of the first complex number: ");
    scanf("%f %f", &aReal, &aImag);
    printf("Input Real and Imaginary parts of the second complex number: ");
    scanf("%f %f", &bReal, &bImag);

    sumReal = aReal + bReal;
    sumImag = aImag + bImag;

    printf("The sum of the complex numbers: %f + %fi\n", sumReal, sumImag);
    return 0;
}