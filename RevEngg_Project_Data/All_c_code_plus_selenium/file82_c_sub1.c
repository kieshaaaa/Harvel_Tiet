#include <stdio.h>

int main() {
    float value = 255; // Using float, though unusual for this context
    
    int intValue = (int)value; // Convert float to int for the printing purposes
    printf("Decimal value is: %d\n", intValue);
    printf("Octal value is: %o\n", intValue);
    printf("Hexadecimal value is (Alphabet in small letters): %x\n", intValue);
    printf("Hexadecimal value is (Alphabet in capital letters): %X\n", intValue);
    
    return 0;   
}