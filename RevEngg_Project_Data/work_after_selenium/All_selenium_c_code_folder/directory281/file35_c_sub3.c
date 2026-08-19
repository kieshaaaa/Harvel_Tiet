#include <stdio.h>

#define CONVERSION_FACTOR 2.54

int main() {
    float input_inches, output_cm;
    printf("**********************************\n");
    printf("* Inches to Centimeters Converter *\n");
    printf("**********************************\n");
    printf("Input inches: ");
    scanf("%f", &input_inches);
    output_cm = input_inches * CONVERSION_FACTOR;
    printf("Result: %.4f centimeters\n", output_cm);
    return 0;
}