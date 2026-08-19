#include <stdio.h>

int main() {
    float feet, yards;

    printf("Enter the length in feet: ");
    scanf("%f", &feet);

    yards = feet / 3.0;

    printf("feet is equal to %.2f yards.\n", yards);

    return 0;
}
