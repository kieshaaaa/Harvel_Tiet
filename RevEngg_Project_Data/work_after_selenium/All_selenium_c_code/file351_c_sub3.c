#include <stdio.h>

int main() {
    unsigned int num = 0x4, revNum = 0;
    unsigned char half = sizeof(num) * 4; // Half the total bits
    unsigned int left, right;

    for (int i = 0; i < half; i++) {
        left = (num >> (half + i)) & 1;
        right = (num >> i) & 1;

        if (left != right) {
            revNum |= (1 << i) | (1 << (half + i));
        }
    }

    printf("\n");
    printf("%u", revNum);
    return 0;
}