#include <stdio.h>

int main() {
    float atm;
    printf("Enter pressure in Atmospheres: ");
    scanf("%f", &atm);
    float mmHg = atm * 760.0; // Inline initialization and conversion
    printf("Equivalent pressure in mmHg: %f\n", mmHg);
    return 0;
}