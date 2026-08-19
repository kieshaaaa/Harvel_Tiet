#include <stdio.h>

void getBinaryV3(int n) {
    for (int i = 15; i >= 0; --i) {
        printf("%c", ((n >> i) & 1) ? '1' : '0');
    }
}

int main() {
    int num;
    printf("Enter an integer number :");
    scanf("%d", &num);
    printf("\nBinary value of %d is =", num);
    getBinaryV3(num);
    return 0;
}