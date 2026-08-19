#include <stdio.h>

int main() {
    float mm, cm;

    printf("Enter the length in millimeters: ");
    scanf("%f", &mm);

    cm = mm / 10.0;

    printf("millimeters is equal to %.2f centimeters.\n",  cm);

    return 0;
}