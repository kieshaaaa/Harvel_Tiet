#include <stdio.h>

int main() {
    float pressure_pascals, pressure_bar;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pressure_pascals);
    pressure_bar = pressure_pascals / 100000;
    printf("Pa is %f bar.\n", pressure_bar);
    return 0;
}