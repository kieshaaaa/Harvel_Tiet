#include <stdio.h>
#include <math.h>

int main() {
    float s, a, root3, cp;

    printf("Enter the length of the side: ");
    scanf("%f", &s);

    root3 = sqrt(3);
    cp = 3 * root3 / 2;
    a = cp * s * s;

    printf("Area of the hexagon: ");
    printf("%.2f\n", a);

    return 0;
}