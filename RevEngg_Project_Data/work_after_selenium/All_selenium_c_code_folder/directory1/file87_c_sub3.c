#include <stdio.h>

int main() {
    char binary[64];
    int decimal = 0;
    printf("Enter a binary number: ");
    scanf("%s", binary);
    
    int i = 0;
    while (binary[i] != '\0') i++; // Manual string length calculation
    int length = i;
    
    for(i = 0; i < length; i++) {
        if(binary[i] == '1') {
            // Manual power calculation avoiding pow()
            int power = 1;
            for(int j = 1; j < length - i; j++) {
                power *= 2;
            }
            decimal += power;
        }
    }
    
    printf("Decimal number is: ");
    printf("%d\n", decimal);
    return 0;
}