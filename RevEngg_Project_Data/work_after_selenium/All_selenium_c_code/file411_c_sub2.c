#include <stdio.h>

int main() {
    float feet, conversionFactor = 3.0f;
    printf("Enter the length in feet: ");
    scanf("%f", &feet);

    float yards = feet / conversionFactor;
    printf("The equivalent length in yards is: ");
    printf("%.2f\n", yards);

    return 0;
}