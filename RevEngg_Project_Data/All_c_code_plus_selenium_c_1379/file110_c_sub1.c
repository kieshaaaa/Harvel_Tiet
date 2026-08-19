#include <stdio.h>

int main() {
    float base, h, vol;

    printf("Enter base of the pyramid: ");
    scanf("%f", &base);

    printf("Enter height of the pyramid: ");
    scanf("%f", &h);

    vol = (base * base * h) / 3.0f;

    printf("Pyramid volume: ");
    printf("%.2f\n", vol);

    return 0;
}