#include <stdio.h>

int main() {
    float pressure_pascals, pressure_mmHg;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pressure_pascals);
    pressure_mmHg = pressure_pascals * 0.007;
    printf(" Pa is %f mmHg.\n", pressure_mmHg);
    return 0;
}