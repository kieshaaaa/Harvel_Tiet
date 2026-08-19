#include <stdio.h>

int main() {
    float b, h, area;

    printf("Input the base length of the parallelogram: ");
    scanf("%f", &b);

    printf("Input the height length of the parallelogram: ");
    scanf("%f", &h);

    area = b * h;

    printf("The area of the parallelogram is: %.2f\n", area);

    return 0;
}