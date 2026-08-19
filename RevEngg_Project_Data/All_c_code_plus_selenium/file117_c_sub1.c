#include <stdio.h>

int main() {
    int num1, shiftedValue;

    printf("Enter an integer: ");
    scanf("%d", &num1);

    shiftedValue = num1 << 3; // Shifting left instead of right, by 3 bits

    printf("Shifted value is: ");
    printf("%d", shiftedValue);
    printf(" \n");

    return 0;
}