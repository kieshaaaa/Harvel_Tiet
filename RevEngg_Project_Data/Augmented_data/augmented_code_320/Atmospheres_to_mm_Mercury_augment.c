#include <stdio.h>

int main() {
    float atmospheres, millimetersMercury;
    printf("Enter pressure in Atmospheres: ");
    scanf("%f", &atmospheres);
    millimetersMercury = atmospheres * 760;
    printf(" atm is %f mmHg.\n", millimetersMercury);
    return 0;
}