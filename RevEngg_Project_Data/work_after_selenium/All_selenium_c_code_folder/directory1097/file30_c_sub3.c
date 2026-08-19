#include <stdio.h>

int main() {
    int decimal, remainder;
    char octal[30]; // Assuming the octal number won't exceed 30 characters
    int index = 0;
    
    printf("Enter a decimal number: ");
    scanf("%d", &decimal);
    
    while (decimal > 0) {
        remainder = decimal % 8;
        octal[index++] = '0' + remainder; // Convert int to corresponding char
        decimal /= 8;
    }
    
    printf("Octal value is: ");
    for (int i = index - 1; i >= 0; i--) {
        printf("%c", octal[i]);
    }
    
    return 0;
}