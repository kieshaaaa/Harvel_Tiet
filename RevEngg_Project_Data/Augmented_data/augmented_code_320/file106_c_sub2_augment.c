#include <stdio.h>

int main() {
    float millimeters, inches;
    printf("\nEnter value in Millimeters to convert to Inches: ");
    scanf("%f", &millimeters);
    inches = millimeters / 25.4; 
    printf("\n%f Millimeter = %f Inches\n", millimeters, inches);

    return 0;
}