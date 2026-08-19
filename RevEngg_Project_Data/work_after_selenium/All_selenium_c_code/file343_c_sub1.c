#include <stdio.h>

int main() {
    float b, s, p;

    printf("Enter base: ");
    scanf("%f", &b);
    printf("Enter side: ");
    scanf("%f", &s);

    p = 2 * (b + s);

    printf("Perimeter: %.2f\n", p);

    return 0;
}