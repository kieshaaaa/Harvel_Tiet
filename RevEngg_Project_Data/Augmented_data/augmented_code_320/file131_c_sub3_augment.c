#include <stdio.h>
#include <math.h>

int main() {
    float s, a;

    printf("Enter the length of the side: ");
    scanf("%f", &s);

    a = (1.73205f / 2 * 3) * (s * s); // 1.73205 is an approximation of sqrt(3)

    printf("Area of the hexagon: ");
    printf("%.2f\n", a);

    return 0;
}