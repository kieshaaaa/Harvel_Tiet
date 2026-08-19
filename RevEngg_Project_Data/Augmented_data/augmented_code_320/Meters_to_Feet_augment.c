#include <stdio.h>

int main() {
    float m, f;

    printf("Enter the length in meters: ");
    scanf("%f", &m);

    f = m / 0.3048;

    printf(" meters is equal to %.2f feet.\n",  f);

    return 0;
}