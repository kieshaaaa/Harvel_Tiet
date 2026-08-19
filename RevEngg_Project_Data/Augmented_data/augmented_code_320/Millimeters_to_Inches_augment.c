#include <stdio.h>

int main() {
    float length_mm, length_inches;

    printf("Enter the length in millimeters: ");
    scanf("%f", &length_mm);

    length_inches = length_mm / 25.4;

    printf("millimeters is equal to %.2f inches.\n", length_inches);

    return 0;
}