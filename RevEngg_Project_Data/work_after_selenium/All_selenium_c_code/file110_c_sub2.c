#include <stdio.h>

int main() {
    float bLength, hgt, vlm;

    printf("Enter base length and height of the pyramid separated by space: ");
    scanf("%f %f", &bLength, &hgt);

    vlm = (bLength * bLength * hgt) / 3.0f;

    printf("Volume: ");
    printf("%.2f\n", vlm);

    return 0;
}