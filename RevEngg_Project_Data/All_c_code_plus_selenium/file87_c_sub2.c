#include <stdio.h>
#include <string.h>

int main() {
    char binary[64];
    int decimal = 0;
    printf("Enter a binary number: ");
    scanf("%s", binary);
    
    int length = strlen(binary);
    int powerOfTwo = 1; // Represents 2^0 initially
    for(int i = length - 1; i >= 0; i--) {
        if(binary[i] == '1') {
            decimal += powerOfTwo;
        }
        powerOfTwo *= 2;
    }
    
    printf("Decimal number is: ");
    printf("%d\n", decimal);
    return 0;
}