#include <stdio.h>

int main() {
    float m, km;

    printf("Enter the length in meters: ");
    scanf("%f", &m);

    km = m / 1000.0;

    printf(" meters is equal to %.2f kilometers.\n",  km);

    return 0;
}