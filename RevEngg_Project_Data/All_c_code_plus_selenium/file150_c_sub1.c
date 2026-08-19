#include <stdio.h>

int main() {
    int number, i;
    // Assuming a 32-bit int, create an array to hold binary digits.
    int bin[32] = {0}; 

    printf("Enter decimal number: ");
    scanf("%d", &number);

    // Fill the bin array with the binary representation.
    for (i = 0; i < 32; i++) {
        bin[i] = (number >> i) & 1;
    }

    // Print in reverse to display the binary number correctly.
    printf("Binary value is: ");
    // Start printing from the first non-zero bit or the highest bit.
    int startPrinting = 0;
    for (i = 31; i >= 0; i--) {
        if (bin[i] == 1)
            startPrinting = 1;
        if (startPrinting)
            printf("%d", bin[i]);
    }
    // Handle the case for number = 0 explicitly.
    if (number == 0) printf("0");
    printf("\n");
    
    return 0;
}