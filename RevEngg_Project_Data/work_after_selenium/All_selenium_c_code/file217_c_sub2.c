#include<stdio.h>

int main() {
    int row, col, product;

    for (row = 1; row <= 10; row++) {
        for (col = 1; col <= row; col++) {
            product = row * col;
            printf("%d  ", product);
        }
        printf("\n");
    }
    return 0;
}