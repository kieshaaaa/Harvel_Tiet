#include <stdio.h>

int main() {
    float centimeters, inches_converted;

    printf("Input centimeters: ");
    scanf("%f", &centimeters);

    inches_converted = centimeters / 2.54;
    printf("%.2f centimeters equals ", centimeters);
    printf("%.2f inches\n", inches_converted);

    return 0;
}