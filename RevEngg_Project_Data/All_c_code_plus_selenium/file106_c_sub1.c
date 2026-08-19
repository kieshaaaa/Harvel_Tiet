#include <stdio.h>

#define MM_IN_1_INCH 25.4

int main() {
    float mm, inches;
    printf("\nEnter value in Millimeters to convert to Inches: ");
    scanf("%f", &mm);
    inches = mm / MM_IN_1_INCH;
    printf("\n%f Millimeter = %f Inches\n", mm, inches);

    return 0;
}