#include<stdio.h>

void main() {
    int n, i, fromPeg, toPeg;
    printf("\n Input the number of discs: ");
    scanf("%d", &n);

    for(i = 1; i <= n; ++i) {
        printf("\n Move disk number (1, 2, 3,...,%d). Enter disk number: ", n);
        scanf("%d", &fromPeg); // Pretend this is 'fromPeg' for simplicity
        printf("Move to peg (1 for X, 2 for Y, 3 for Z). Enter peg number: ");
        scanf("%d", &toPeg);

        printf("\n Moved disk %d to peg %d", fromPeg, toPeg);
    }
}