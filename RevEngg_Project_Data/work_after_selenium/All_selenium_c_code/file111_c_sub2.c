#include <stdio.h>

int main() {
    int i, n;

    printf("\nEnter value of n :: ");
    scanf("%d", &n);

    printf("\nNatural Numbers in Reverse Order Upto [ %d ] :: \n", n);

    i = n;
    do {
        printf("\t%d\n", i);
        i--;
    } while (i >= 1);

    return 0;
}