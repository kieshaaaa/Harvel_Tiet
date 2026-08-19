#include <stdio.h>

int main() {
    float millimeters, centimeters;

    printf("Enter the length in millimeters: ");
    scanf("%f", &millimeters);

    centimeters = millimeters / 10.0;

    printf("millimeters is equal to %.2f centimeters.\n",  centimeters);

    return 0;
}
