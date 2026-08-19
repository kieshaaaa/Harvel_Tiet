#include <stdio.h>

int main() {
    int value = 789;
    
    int decValue = value;
    int octValue = value;
    int hexValue = value;
    
    printf("Decimal value is: %d\n", decValue);
    printf("Octal value is: %o\n", octValue);
    printf("Hexadecimal value is (Alphabet in small letters): %x\n", hexValue);
    printf("Hexadecimal value is (Alphabet in capital letters): %X\n", hexValue);
    
    return 0;
}