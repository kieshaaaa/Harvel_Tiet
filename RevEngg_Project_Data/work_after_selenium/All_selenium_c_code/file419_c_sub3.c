#include <stdio.h>

int main() {
    float cm_input, inch_output;

    printf("Enter measurement in cm to convert to inches: ");
    scanf("%f", &cm_input);

    inch_output = cm_input / 2.54;
    printf("Conversion result: ");
    printf("%.2f cm = ", cm_input);
    printf("%.2f inches\n", inch_output);

    return 0;
}