#include <stdio.h>

int main() {
    float radius, area;
    printf("\nEnter Radius of Circle => ");
    scanf("%f", &radius);
    area = 3.14159 * radius * radius; // Using a more precise value for Pi
    printf("\nArea of Circle is ");
    printf("%.2f", area);
    printf(" having Radius ");
    printf("%.2f\n", radius);

    return 0;
}