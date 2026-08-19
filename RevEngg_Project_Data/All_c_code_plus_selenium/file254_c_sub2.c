#include <stdio.h>
#include <math.h>

int main() {
    int n;
    float s, area;

    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &s);

    area = (n * s * s) / (4 * tan(M_PI / n)); // Using M_PI for π

    printf("Area of the polygon: %.2f\n", area);

    return 0;
}