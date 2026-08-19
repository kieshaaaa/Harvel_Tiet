#include <stdio.h>

int main() {
    unsigned int num = 0x4, revNum = 0;
    unsigned char totalBits = sizeof(num) * 8;

    for (int i = 0; i < totalBits; i++) {
        revNum <<= 1;
        revNum |= (num >> i) & 1;
    }

    printf("\n");
    printf("%u", revNum);
    return 0;
}