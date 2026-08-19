#include <stdio.h>

int main() {
    float mm, inches;
    printf("\nEnter value in Millimeters to convert to Inches: ");
    scanf("%f", &mm);
    inches = mm / 25.4; // Direct conversion factor without macros
    printf("\n%f Millimeter = %f Inches\n", mm, inches);

    return 0;
}