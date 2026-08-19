#include <stdio.h>

int main() {
    float bar, mmHg;
    printf("Enter the pressure in Bar to convert: ");
    scanf("%f", &bar);
    mmHg = bar * 750.062;
    printf("Conversion result: %f mmHg\n", mmHg);
    printf("Conversion completed successfully.\n");
    return 0;
}