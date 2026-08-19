#include<stdio.h>

int main() {
    int i, j;
    int count;

    for (i = 1; i <= 8; i++) {
        printf("\n");
        count = i % 2 == 0 ? 1 : 0;
        for (j = 1; j <= i; j++) {
            printf("%d ", count);
            count = 1 - count;
        }
    }
    return 0;
}