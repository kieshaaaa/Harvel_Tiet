#include <stdio.h>

int main() {
    float radius, area;
    printf("Enter Radius of Circle: ");
    scanf("%f", &radius);
    area = 3.14 * radius * radius; // Common approximation for Pi
    printf("Calculating...\n");
    printf("Area of Circle is ");
    printf("%.2f", area);
    printf(" having Radius ");
    printf("%.2f\n", radius);

    return 0;
}