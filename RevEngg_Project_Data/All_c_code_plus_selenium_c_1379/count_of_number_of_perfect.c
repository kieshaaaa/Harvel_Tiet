#include <stdio.h>

int main() {
    int n, i, j, sum;
    int count = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &n);

    printf("Perfect numbers between 1 and %d are: ", n);

    for(i = 1; i <= n; i++) {
        sum = 0;

        // Find the sum of all divisors of i
        for(j = 1; j <= i/2; j++) {
            if(i % j == 0) {
                sum += j;
            }
        }

        // Check if the sum of divisors is equal to the number itself
        if(sum == i) {
            printf("%d ", i);
            count++;
        }
    }

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", n, count);

    return 0;
}
