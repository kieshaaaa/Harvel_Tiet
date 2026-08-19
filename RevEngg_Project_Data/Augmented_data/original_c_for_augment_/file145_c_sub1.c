#include <stdio.h>
#include <math.h>

int main() {
    float base, slant, area;
    printf("Base length: ");
    scanf("%f", &base);
    printf("Slant height: ");
    scanf("%f", &slant);
    area = pow(base, 2) + 4 * 0.5 * base * slant; // Includes base area and lateral surface area
    printf("Surface Area: %.2f\n", area);
    return 0;
}