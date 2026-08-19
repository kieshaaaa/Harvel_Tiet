#include <stdio.h>

void getBinaryV1(int n) {
    int bit;
    for (int i = 15; i >= 0; --i) {
        bit = (n >> i) & 1;
        if (bit == 1)
            printf("1");
        else
            printf("0");
    }
}

int main() {
    int num;
    printf("Enter an integer number :");
    scanf("%d", &num);
    printf("\nBinary value of %d is =", num);
    getBinaryV1(num);
    return 0;
}