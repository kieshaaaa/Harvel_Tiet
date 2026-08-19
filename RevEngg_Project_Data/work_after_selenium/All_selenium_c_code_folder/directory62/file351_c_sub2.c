#include <stdio.h>

int main() {
    unsigned int num = 0x4;
    unsigned char totalBits = sizeof(num) * 8;
    unsigned int mask1 = 1, mask2 = (1 << (totalBits - 1)), temp;

    for (int i = 0; i < totalBits / 2; i++) {
        if ((num & mask1) != (num & mask2)) {
            num ^= mask1;
            num ^= mask2;
        }
        mask1 <<= 1;
        mask2 >>= 1;
    }

    printf("\n");
    printf("%u", num);
    return 0;
}