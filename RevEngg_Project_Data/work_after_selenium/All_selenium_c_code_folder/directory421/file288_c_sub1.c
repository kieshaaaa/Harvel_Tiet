#include <stdio.h>
#include <stdlib.h>

int main() {
    int n, sum = 0;
    printf("\nEnter N to Calculate Sum of First N Natural Numbers => ");
    scanf("%d", &n);

    if (n < 0) {
        printf("!!! Invalid Input .....");
        exit(0);
    }

    int i = 1;
    do {
        sum += i;
        i++;
    } while (i <= n);

    printf("\nSum of First %d Natural Numbers => %d", n, sum);
    printf("\n");
    return 0;
}