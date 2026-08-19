#include <stdio.h>

int main() {
    float bar, mmHg;
    printf("Enter pressure in Bar: ");
    scanf("%f", &bar);
    mmHg = 750.062 * bar;
    printf("Pressure in mmHg: %f\n", mmHg);
    return 0;
}