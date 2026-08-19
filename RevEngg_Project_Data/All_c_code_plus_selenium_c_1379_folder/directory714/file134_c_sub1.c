#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float R, r, area, piSquared;
    
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &R);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &r);

    piSquared = PI * PI;
    area = 4 * piSquared * R * r;

    printf("Surface area of the torus: ");
    printf("%.2f\n", area);

    return 0;
}