#include <stdio.h>
#include <string.h>

int main() {
    char binary[64];
    int decimal = 0;
    int i;
    printf("Enter a binary number: ");
    scanf("%s", binary);
    
    int length = strlen(binary);
    for(i = 0; i < length; i++) {
        decimal = decimal << 1;
        if(binary[i] == '1') {
            decimal = decimal | 1;
        }
    }
    
    printf("Decimal number is: ");
    printf("%d\n", decimal);
    return 0;
}