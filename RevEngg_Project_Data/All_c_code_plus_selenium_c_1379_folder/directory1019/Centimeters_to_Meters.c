#include <stdio.h>

int main() {
    float centimeters, meters;

    printf("Enter the length in centimeters: ");
    scanf("%f", &centimeters);

    meters = centimeters / 100.0;

    printf(" centimeters is equal to %.2f meters.\n", meters);

    return 0;
}
