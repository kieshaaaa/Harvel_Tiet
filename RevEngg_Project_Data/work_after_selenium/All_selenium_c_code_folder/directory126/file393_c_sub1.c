#include <stdio.h>

int main() {
    int decimal, index = 0;
    char binary[32]; // Using a char array to store binary digits as characters

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);
    
    // Directly converting and printing in reverse order
    if (decimal == 0) {
        printf("Binary number is: 0\n");
    } else {
        printf("Binary number is: ");
        while (decimal > 0) {
            binary[index++] = (decimal % 2) + '0'; // Convert integer to char
            decimal /= 2;
        }
        
        for (int j = index - 1; j >= 0; j--) {
            putchar(binary[j]);
        }
        printf("\n");
    }
    
    return 0;
}