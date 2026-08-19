#include <stdio.h>

int main() {
    float watts, horsepower;

    printf("Enter power in Watts: ");
    scanf("%f", &watts);

    // Conversion formula from Watts to Horsepower
    horsepower = watts / 746;

    printf(" Watts is equal to %.2f Horsepower.\n", horsepower);

    return 0;
}
