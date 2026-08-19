#include <stdio.h>

int main() {
    int decimal, binary[32], bitsCount = 0;
    printf("Enter a decimal number: ");
    scanf("%d", &decimal);
    
    // Calculating the number of bits needed for binary representation
    int temp = decimal;
    while (temp > 0) {
        bitsCount++;
        temp >>= 1;
    }

    // If decimal is 0, then bitsCount will be 0. Manually set it to 1 for correct processing.
    if (decimal == 0) bitsCount = 1;

    for (int i = bitsCount - 1; i >= 0; i--) {
        binary[i] = (decimal & 1); // Extracting the last bit and storing it
        decimal >>= 1; // Shifting decimal right by 1 bit to process the next bit
    }
    
    printf("Binary number is: ");
    for (int i = 0; i < bitsCount; i++) {
        printf("%d", binary[i]);
    }
    printf("\n");

    return 0;
}