#include <stdio.h>

int main() {
    float l, w, h, area, vol;

    printf("Enter the length of the base (l): ");
    scanf("%f", &l);
    printf("Enter the width of the base (w): ");
    scanf("%f", &w);
    printf("Enter the height of the pyramid (H): ");
    scanf("%f", &h);

    area = l * w;
    vol = (area * h) / 3.0f;

    printf("The volume of the rectangular pyramid is: ");
    printf("%.2f\n", vol);

    return 0;
}