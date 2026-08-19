#include <stdio.h>

int main() {
    int decValue = 1024;
    int octValue = 1024;
    int hexValueSmall = 1024;
    int hexValueCapital = 1024;
    
    printf("Decimal value is: %d\n", decValue);
    printf("Octal value is: %o\n", octValue);
    printf("Hexadecimal value is (Alphabet in small letters): %x\n", hexValueSmall);
    printf("Hexadecimal value is (Alphabet in capital letters): %X\n", hexValueCapital);
    
    return 0;
}