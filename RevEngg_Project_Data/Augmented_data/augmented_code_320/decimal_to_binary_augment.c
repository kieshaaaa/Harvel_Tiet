#include <stdio.h>

int main() {
    int decimal, rem, bin[32];
    int index = 0;
    int k;
    printf("Enter a decimal number: ");
    scanf("%d", &decimal);
    
    for(k=0; decimal > 0; k++) {
        bin[k] = decimal % 2;
        decimal /= 2;
    }
    
    printf("Binary number is: ");
    for(k = k - 1; k >= 0; k--)
        printf("%d", bin[k]);
    printf("\n");
    
    return 0;
}