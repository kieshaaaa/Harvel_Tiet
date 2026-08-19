#include <stdio.h>

int main() {
    float inches, feet;

    printf("Enter the length in inches: ");
    scanf("%f", &inches);

    feet = inches / 12.0;

    printf(" inches is equal to %.2f feet.\n", feet);

    return 0;
}
