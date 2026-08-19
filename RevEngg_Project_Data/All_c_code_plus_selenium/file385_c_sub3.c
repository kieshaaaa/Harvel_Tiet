#include <stdio.h>

int main() {
    float radius, area, pi = 3.1416; // Define Pi here for clarity
    printf("Radius?: ");
    scanf("%f", &radius);
    area = pi * radius * radius; // Calculation separated for clarity
    printf("For a Circle with Radius ");
    printf("%.2f", radius);
    printf(", ");
    printf("Area is ");
    printf("%.2f\n", area);

    return 0;
}