#include <stdio.h>

int main() {
    float a, b, c;

    printf("Enter the side length of the cube: ");
    scanf("%f", &a);

    b = a * a;
    c = b * a;

    printf("Volume of the cube: ");
    printf("%.2f\n", c);

    return 0;
}