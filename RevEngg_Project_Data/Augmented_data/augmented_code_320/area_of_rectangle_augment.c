#include <stdio.h>

int main() {
    float len, wid, area_rect;

    printf("Enter the length of the rectangle: ");
    scanf("%f", &len);
    printf("Enter the width of the rectangle: ");
    scanf("%f", &wid);

    area_rect = len * wid;

    printf("Area of the rectangle: %.2f\n", area_rect);

    return 0;
}