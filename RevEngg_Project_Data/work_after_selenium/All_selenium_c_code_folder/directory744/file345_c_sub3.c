#include <stdio.h>

int main() {
    float mm, inches;
    const float toInches = 25.4;

    printf("Input millimeters: ");
    scanf("%f", &mm);

    inches = mm / toInches;

    printf("Conversion result: ");
    printf("%.2f inches\n", inches);

    return 0;
}