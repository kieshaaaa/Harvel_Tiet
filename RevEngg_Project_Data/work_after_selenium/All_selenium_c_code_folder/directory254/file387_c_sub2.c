#include <stdio.h>

void getBinaryV2(int n) {
    int binary[16], i = 0;
    for (; i < 16; ++i) {
        binary[i] = (n >> i) & 1;
    }
    for (i = 15; i >= 0; --i) {
        printf("%d", binary[i]);
    }
}

int main() {
    int num;
    printf("Enter an integer number :");
    scanf("%d", &num);
    printf("\nBinary value of %d is =", num);
    getBinaryV2(num);
    return 0;
}