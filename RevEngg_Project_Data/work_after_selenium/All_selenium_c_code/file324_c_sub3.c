#include <stdio.h>

int main() {
    int z, product;
    printf("Enter an integer (z): ");
    scanf("%d", &z);
    product = z * 2;
    printf("The product is ");
    printf("%d", product);
    printf(" \n");
    return 0;
}