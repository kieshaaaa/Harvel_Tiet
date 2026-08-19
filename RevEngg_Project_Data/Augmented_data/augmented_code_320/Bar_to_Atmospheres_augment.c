#include <stdio.h>

int main() {
    float pressure_bar, pressure_atm;
    printf("Enter pressure in Bar: ");
    scanf("%f", &pressure_bar);
    pressure_atm = pressure_bar / 1.013;
    printf(" bar is %f atm.\n", pressure_atm);
    return 0;
}