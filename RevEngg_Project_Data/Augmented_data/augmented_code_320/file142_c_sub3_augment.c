#include <stdio.h>

int main() {
    int limit, i, j, total;
    int perfectCount = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &limit);

    printf("Perfect numbers between 1 and %d are: ", limit);

    i = 2;
    while (i <= limit) { 
        total = 1; 
        j = 2;
        while (j <= i / 2) {
            if (i % j == 0) {
                total += j;
            }
            j++;
        }
        if (total == i) {
            printf("%d ", i);
            perfectCount++;
        }
        i += 2;
    }

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", limit, perfectCount);

    return 0;
}