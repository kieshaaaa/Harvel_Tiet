#include <stdio.h>

int main() {
    float l, w, h, v;

    printf("Length, width, height: ");
    scanf("%f %f %f", &l, &w, &h);

    v = (l * w * h) / 3.0f;

    printf("Pyramid volume: %.2f\n", v);

    return 0;
}