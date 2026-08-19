#include <stdio.h>

int main() {
    float pascals, atm;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pascals);
    atm = pascals / 101325;
    printf(" Pa is %f atm.\n", atm);
    return 0;
}
