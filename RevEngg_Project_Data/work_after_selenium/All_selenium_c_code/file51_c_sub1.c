#include <stdio.h>
#include <math.h>

int main() {
    float a, h, A_base, A_side, A_total;

    printf("Enter the side length of the square base: ");
    scanf("%f", &a);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &h);

    A_base = a * a;
    A_side = 2 * a * h;
    A_total = A_base + A_side;

    printf("Surface area of the right pyramid with a square base: %.2f\n", A_total);

    return 0;
}