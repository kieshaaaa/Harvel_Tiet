#include <stdio.h>

int main() {
    float feet;
    printf("Please input the length in feet to convert to yards: ");
    scanf("%f", &feet);

    float yards;
    yards = feet / 3.0f;
    printf("Conversion result: ");
    printf("%.2f yards\n", yards);

    return 0;
}