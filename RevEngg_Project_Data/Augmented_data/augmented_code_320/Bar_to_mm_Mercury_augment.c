#include <stdio.h>

int main() {
    float pressureBar, pressureMmHg;
    printf("Enter pressure in Bar: ");
    scanf("%f", &pressureBar);
    pressureMmHg = pressureBar * 750.062;
    printf("bar is %f mmHg.\n", pressureMmHg);
    return 0;
}