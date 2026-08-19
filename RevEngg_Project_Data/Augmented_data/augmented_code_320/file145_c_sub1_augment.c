#include <stdio.h>
#include <math.h>

int main() {
    float b, s, surface_area;
    printf("Base length: ");
    scanf("%f", &b);
    printf("Slant height: ");
    scanf("%f", &s);
    surface_area = pow(b, 2) + 4 * 0.5 * b * s; 
    printf("Surface Area: %.2f\n", surface_area);
    return 0;
}