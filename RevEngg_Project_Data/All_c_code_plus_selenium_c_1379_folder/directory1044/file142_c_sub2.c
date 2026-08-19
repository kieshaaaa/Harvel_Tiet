#include <stdio.h>

int main() {
    int n, i, j, sum;
    int count = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &n);

    printf("Perfect numbers between 1 and %d are: ", n);

    i = 1;
    do {
        sum = 0;
        j = 1;
        do {
            if (i % j == 0) {
                sum += j;
            }
            j++;
        } while (j <= i / 2);

        if (sum == i) {
            printf("%d ", i);
            count++;
        }
        i++;
    } while (i <= n);

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", n, count);

    return 0;
}