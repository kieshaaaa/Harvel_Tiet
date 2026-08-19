#include <stdio.h>

int main() {
    float l, w, h;
    printf("Enter the length of the base: ");
    scanf("%f", &l);
    printf("Enter the width of the base: ");
    scanf("%f", &w);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &h);

    float vol = (l * w * h) / 3.0f;

    printf("The volume of the rectangular pyramid is: ");
    printf("%.2f\n", vol);

    return 0;
}