#include <stdio.h>

int main() {
    int n, i, j, sum;
    int count = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &n);

    printf("Perfect numbers between 1 and %d are: ", n);

    for (i = 2; i <= n; i += 2) { // Start from 2, increment by 2, skipping all odd numbers
        sum = 1; // 1 is always a divisor
        for (j = 2; j <= i / 2; j++) {
            if (i % j == 0) {
                sum += j;
            }
        }
        if (sum == i) {
            printf("%d ", i);
            count++;
        }
    }

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", n, count);

    return 0;
}