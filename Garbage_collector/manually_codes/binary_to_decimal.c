#include <stdio.h>
#include <string.h>
#include <math.h>

int main() {
    char binary[64];
    int decimal;
    int i;
    printf("Enter a binary number: ");
    scanf("%s", binary);
    
    int length = strlen(binary);
    for(i = 0; i < length; i++) {
        if(binary[i] == '1') {
            decimal += pow(2, length - i - 1);
        }
    }
    
    printf("Decimal number is: %d\n", decimal);
    return 0;
}
