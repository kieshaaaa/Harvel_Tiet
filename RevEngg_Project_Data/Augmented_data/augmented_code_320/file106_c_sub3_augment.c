#include <stdio.h>

int main() {
    float millimeters, inch;
    printf("\nEnter value in Millimeters to convert to Inches: ");
    scanf("%f", &millimeters);
    inch = millimeters / 25.4; 
    printf("\n%f Millimeter = %f Inches\n", millimeters, inch);

    return 0;
}