#include <stdio.h>

int main() {
    int n;

    printf("\nEnter value of n :: ");
    scanf("%d", &n);

    printf("\nNatural Numbers in Reverse Order Upto [ %d ] :: \n", n);

    for(int i = n; i; i--) {
        printf("\t%d\n", i);
    }

    return 0;
}