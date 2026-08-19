#include <stdio.h>
#include <math.h>

int main() {
    float base_side, slant_h, square_area, triangle_area, total_surface_area;

    printf("Enter the side length of the square base: ");
    scanf("%f", &base_side);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &slant_h);

    square_area = base_side * base_side;
    triangle_area = base_side * slant_h;
    total_surface_area = square_area + 2 * triangle_area;

    printf("Surface area of the right pyramid with a square base: %.2f\n", total_surface_area);

    return 0;
}