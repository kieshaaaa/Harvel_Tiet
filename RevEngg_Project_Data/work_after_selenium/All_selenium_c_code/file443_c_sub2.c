#include<stdio.h>

int main() {
    int i, j;
    int count = 1;

    for (i = 1; i <= 8; i++) {
        printf("\n");
        for (j = 1; j <= i; j++, count = !count) {
            printf("%d ", count);
        }
        count = i % 2 ? 0 : 1;
    }
    return 0;
}