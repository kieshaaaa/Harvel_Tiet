#include <stdio.h>

int main() {
    float atm = 0.0;
    printf("Enter the value of pressure in atmospheres: ");
    scanf("%f", &atm);
    float mmHg = 0.0;
    mmHg = atm * 760;
    printf("The pressure in mmHg is: %f\n", mmHg);
    return 0;
}