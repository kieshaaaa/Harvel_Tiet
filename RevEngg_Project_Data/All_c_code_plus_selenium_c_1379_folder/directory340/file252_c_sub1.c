#include <stdio.h>

int main() {
    float pascals, atm;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pascals);
    atm = pascals / 101325;
    printf("Pressure in atmospheres: ");
    printf("%f", atm);
    printf(" atm\n");
    return 0;
}