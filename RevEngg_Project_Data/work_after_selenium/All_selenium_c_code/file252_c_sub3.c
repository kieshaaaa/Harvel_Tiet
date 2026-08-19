#include <stdio.h>

int main() {
    float pascals;
    float atm;
    float pascalToAtm = 101325;
    printf("Provide the value in Pascals to convert: ");
    scanf("%f", &pascals);
    atm = pascals / pascalToAtm;
    printf("The conversion result is ");
    printf("%f", atm);
    printf(" atm.");
    printf("\n");
    return 0;
}