#include <stdio.h>

int main() {
    float l, w, h;
    printf("Enter the length, width, and height of the pyramid: ");
    scanf("%f %f %f", &l, &w, &h);

    float area = l * w;
    float vol = area * h / 3.0f;

    printf("The volume of the rectangular pyramid is: ");
    printf("%.2f\n", vol);

    return 0;
}