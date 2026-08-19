#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float r, h, s, a;

    printf("Input radius: ");
    scanf("%f", &r);
    printf("Input height: ");
    scanf("%f", &h);

    s = sqrt(r * r + h * h);
    a = PI * r * (r + s);

    printf("Surface Area: ");
    printf("%.2f\n", a);

    return 0;
}