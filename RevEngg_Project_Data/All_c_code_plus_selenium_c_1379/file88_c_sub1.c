#include <stdio.h>

int main() {
    float r1, i1, r2, i2, rSum, iSum;
    printf("Enter First Complex Number: ");
    scanf("%f %f", &r1, &i1);
    printf("Enter Second Complex Number: ");
    scanf("%f %f", &r2, &i2);
    rSum = r1 + r2;
    iSum = i1 + i2;
    printf("Sum: %f + %fi\n", rSum, iSum);
    return 0;
}