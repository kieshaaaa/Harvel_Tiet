#include <stdio.h>
#include <math.h>

int main() {
    float s, a, m;

    printf("Enter the length of the side: ");
    scanf("%f", &s);

    m = 3 * sqrt(3) / 2;
    a = m * s * s;

    printf("Area of the hexagon: ");
    printf("%.2f\n", a);

    return 0;
}