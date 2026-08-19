#include <stdio.h>

int main() {
    float atm, mmHg;
    printf("Enter pressure in Atmospheres: ");
    scanf("%f", &atm);
    mmHg = atm * 760;
    printf(" atm is %f mmHg.\n", mmHg);
    return 0;
}
