#include <stdio.h>

int main() {
    double km, miles;
    printf("Enter the distance in kilometers: ");
    scanf("%lf", &km);

    // Conversion factor from kilometers to miles
    miles = km * 0.621371;

    printf("Distance in Kilometers: %.2lf\n", km);
    printf("Equivalent in Miles: %.4lf\n", miles);

    return 0;
}