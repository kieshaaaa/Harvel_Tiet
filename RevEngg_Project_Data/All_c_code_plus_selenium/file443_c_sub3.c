#include<stdio.h>

int main() {
    int i, j;
    int count = 1;
    int flip = 1;

    for (i = 1; i <= 8; i++) {
        printf("\n");
        for (j = 1; j <= i; j++) {
            printf("%d ", count);
            count = count == 1 ? 0 : 1;
        }
        if (flip) {
            count = 0;
            flip = 0;
        } else {
            count = 1;
            flip = 1;
        }
    }
    return 0;
}