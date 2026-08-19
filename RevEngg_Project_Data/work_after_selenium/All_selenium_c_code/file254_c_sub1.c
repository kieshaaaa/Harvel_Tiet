#include <stdio.h>
#include <math.h>

int main() {
    int n;
    float s, area;
    float pi = acos(-1); // Calculating the value of π using acos

    printf("Enter the number of sides: ");
    scanf("%d", &n);
    printf("Enter the length of one side: ");
    scanf("%f", &s);

    area = (n * s * s) / (4 * tan(pi / n));

    printf("Area of the polygon: %.2f\n", area);

    return 0;
}