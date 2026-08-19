#include<stdio.h>

void main() {
    int n, i;
    printf("\n Input the number of discs: ");
    scanf("%d", &n);

    printf("\n Tower of Hanoi for %d DISC :: \n", n);

    for(i = 1; i <= n; ++i) {
        printf("\n Lift disk %d", i);
        printf("\n Move disk %d from peg X to peg Y", i);
        printf("\n Drop disk %d", i);
    }
}