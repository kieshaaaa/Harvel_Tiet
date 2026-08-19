#include <stdio.h>

int main() {
    float power_watts, power_horsepower;

    printf("Enter power in Watts: ");
    scanf("%f", &power_watts);

    power_horsepower = power_watts / 746;

    printf(" Watts is equal to %.2f Horsepower.\n", power_horsepower);

    return 0;
}