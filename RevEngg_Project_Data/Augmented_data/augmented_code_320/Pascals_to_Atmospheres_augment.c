#include <stdio.h>

int main() {
    float pressure_pascals, pressure_atm;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pressure_pascals);
    pressure_atm = pressure_pascals / 101325;
    printf(" Pa is %f atm.\n", pressure_atm);
    return 0;
}