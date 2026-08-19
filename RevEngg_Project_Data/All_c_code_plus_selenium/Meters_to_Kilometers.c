#include <stdio.h>

int main() {
    float meters, kilometers;

    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    kilometers = meters / 1000.0;

    printf(" meters is equal to %.2f kilometers.\n",  kilometers);

    return 0;
}
