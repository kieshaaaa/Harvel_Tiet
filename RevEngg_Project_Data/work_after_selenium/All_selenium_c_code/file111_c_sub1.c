#include <stdio.h>

int main() {
    int i, n;

    printf("\nEnter value of n :: ");
    scanf("%d", &n);

    printf("\nNatural Numbers in Reverse Order Upto [ %d ] :: \n", n);

    i = n;
    while (i >= 1) {
        printf("\t%d\n", i);
        i--;
    }

    return 0;
}