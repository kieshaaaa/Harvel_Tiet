#include <stdio.h>

int main() {
    float base_length, height, volume;

    printf("Enter base of the pyramid: ");
    scanf("%f", &base_length);

    printf("Enter height of the pyramid: ");
    scanf("%f", &height);

    volume = (base_length * base_length * height) / 3.0f;

    printf("Pyramid volume: ");
    printf("%.2f\n", volume);

    return 0;
}