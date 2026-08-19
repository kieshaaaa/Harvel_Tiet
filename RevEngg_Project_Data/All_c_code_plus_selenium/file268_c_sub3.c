#include <stdio.h>
#include <math.h>

int main() {
    float s, h, A, V;
    const float pi = 3.14159;
    float tanPart, oneOverTanPiOver5;

    printf("Side length of the pentagon: ");
    scanf("%f", &s);

    printf("Height of the pyramid: ");
    scanf("%f", &h);

    tanPart = tan(pi / 5);
    oneOverTanPiOver5 = 1 / tanPart;
    A = (5 * s * s * oneOverTanPiOver5) / 4;
    V = A * h / 3;

    printf("Pentagonal pyramid volume: ");
    printf("%.2f\n", V);

    return 0;
}