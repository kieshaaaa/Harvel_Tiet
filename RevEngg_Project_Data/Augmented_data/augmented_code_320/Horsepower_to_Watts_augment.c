#include <stdio.h>

int main() {
    float hp, w;

    printf("Enter power in Horsepower: ");
    scanf("%f", &hp);

    // Conversion formula from Horsepower to Watts
    w = hp * 746;

    printf(" Horsepower is equal to %.2f Watts.\n", w);

    return 0;
}