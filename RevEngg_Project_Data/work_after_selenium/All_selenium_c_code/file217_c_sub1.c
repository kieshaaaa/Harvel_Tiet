#include<stdio.h>

int main() {
    int i = 1, j, product;

    while (i <= 10) {
        j = 1;
        while (j <= i) {
            product = i * j;
            printf("%d  ", product);
            j++;
        }
        printf("\n");
        i++;
    }
    return 0;
}