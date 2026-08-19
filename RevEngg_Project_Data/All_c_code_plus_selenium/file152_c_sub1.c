#include <stdio.h>

int main() {
    float base_length, height_length, parallelogram_area;

    printf("Input the base length of the parallelogram: ");
    scanf("%f", &base_length);

    printf("Input the height length of the parallelogram: ");
    scanf("%f", &height_length);

    parallelogram_area = base_length * height_length;

    printf("The area of the parallelogram is: %.2f\n", parallelogram_area);

    return 0;
}