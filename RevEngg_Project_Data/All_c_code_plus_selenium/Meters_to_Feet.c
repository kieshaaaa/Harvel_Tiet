#include <stdio.h>

int main() {
    float meters, feet;

    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    feet = meters / 0.3048;

    printf(" meters is equal to %.2f feet.\n",  feet);

    return 0;
}
