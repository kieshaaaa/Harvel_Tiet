#include <stdio.h>

int main() {
    float mm, inches, conversionFactor = 25.4;

    printf("Enter the length in millimeters: ");
    scanf("%f", &mm);

    inches = mm / conversionFactor;

    printf("The length in inches is: ");
    printf("%.2f\n", inches);

    return 0;
}