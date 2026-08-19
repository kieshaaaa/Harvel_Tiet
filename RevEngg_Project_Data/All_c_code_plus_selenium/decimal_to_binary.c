#include <stdio.h>

int main() {
    int decimal, remainder, binary[32];
    int i = 0;
    int j;
    printf("Enter a decimal number: ");
    scanf("%d", &decimal);
    
    while(decimal > 0) {
        binary[i] = decimal % 2;
        decimal /= 2;
        i++;
    }
    
    printf("Binary number is: ");
    for(j = i - 1; j >= 0; j--)
        printf("%d", binary[j]);
    printf("\n");
    
    return 0;
}
