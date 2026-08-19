#include <stdio.h>

int main() {
    float mm;
    float in;

    printf("Input millimeters: ");
    scanf("%f", &mm);

    in = mm / 25.4;

    // Here we add rounding to the nearest hundredth
    in = (int)(in * 100 + 0.5) / 100.0;

    printf("Conversion: %f mm = %f inches\n", mm, in);

    return 0;
}