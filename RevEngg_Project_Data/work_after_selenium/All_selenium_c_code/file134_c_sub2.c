#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float R, r;
    
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &R);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &r);

    printf("Surface area of the torus: ");
    printf("%.2f\n", 4 * PI * PI * R * r);

    return 0;
}