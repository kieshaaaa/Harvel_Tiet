#include <stdio.h>

int main() {
    printf("Enter the length in millimeters: ");
    float millimeters;
    scanf("%f", &millimeters);

    float centimeters = millimeters / 10.0;

    printf("millimeters is equal to ");
    printf("%.2f centimeters.\n", centimeters);

    return 0;
}