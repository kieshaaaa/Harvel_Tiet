#include <stdio.h>

int main() {
    float yards, miles;
    float conversionFactor = 1760.0;

    printf("Enter the length in yards: ");
    scanf("%f", &yards);

    miles = yards / conversionFactor;

    printf("Yards: %.2f - Miles: %.2f\n", yards, miles);

    return 0;
}