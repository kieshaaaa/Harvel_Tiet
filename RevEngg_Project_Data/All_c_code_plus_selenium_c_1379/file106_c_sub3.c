#include <stdio.h>

int main() {
    float mm, inches;
    printf("\nEnter value in Millimeters to convert to Inches: ");
    scanf("%f", &mm);
    inches = mm;
    inches /= 25.4; // Using division assignment for conversion
    printf("\n%f Millimeter = %f Inches\n", mm, inches);

    return 0;
}