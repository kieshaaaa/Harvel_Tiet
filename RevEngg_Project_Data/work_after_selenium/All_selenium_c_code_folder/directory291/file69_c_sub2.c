#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float R, r, volume, piSquared;
    
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &R);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &r);

    piSquared = PI * PI;
    volume = piSquared * 2 * R * r * r;
    
    printf("Volume of the torus: ");
    printf("%.2f\n", volume);

    return 0;
}