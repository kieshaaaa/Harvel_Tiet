#include <stdio.h>

int main() {
    float bar, atm;
    printf("Enter pressure in Bar: ");
    scanf("%f", &bar);
    atm = bar / 1.013;
    printf(" bar is %f atm.\n", atm);
    return 0;
}
