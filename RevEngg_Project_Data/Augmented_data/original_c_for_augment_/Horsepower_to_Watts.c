#include <stdio.h>

int main() {
    float watts, horsepower;

    printf("Enter power in Horsepower: ");
    scanf("%f", &horsepower);

    // Conversion formula from Horsepower to Watts
    watts = horsepower * 746;

    printf(" Horsepower is equal to %.2f Watts.\n", watts);

    return 0;
}
