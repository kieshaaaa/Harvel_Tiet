#include <stdio.h>
#include <math.h>

int main() {
    float length, height, area_base, area_lateral, total_area;

    printf("Enter the side length of the square base: ");
    scanf("%f", &length);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &height);

    area_base = pow(length, 2);
    area_lateral = length * height * 2;
    total_area = area_base + area_lateral;

    printf("Surface area of the right pyramid with a square base: %.2f\n", total_area);

    return 0;
}