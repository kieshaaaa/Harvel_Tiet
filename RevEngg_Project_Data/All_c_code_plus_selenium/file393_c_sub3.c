#include <stdio.h>

int main() {
    int decimal;
    printf("Enter a decimal number: ");
    scanf("%d", &decimal);
    
    // Find highest power of 2 within the decimal
    int highestBit = 31; // Assuming a 32-bit integer for simplicity
    while (highestBit >= 0 && !(decimal & (1 << highestBit))) {
        highestBit--;
    }
    
    printf("Binary number is: ");
    if (highestBit == -1) {
        printf("0"); // If decimal is 0
    } else {
        for (int i = highestBit; i >= 0; i--) {
            if (decimal & (1 << i)) {
                printf("1");
            } else {
                printf("0");
            }
        }
    }
    printf("\n");
    
    return 0;
}