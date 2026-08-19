#include <stdio.h>

int main() {
    int limit, x, y, total;
    int perfectCount = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &limit);

    printf("Perfect numbers between 1 and %d are: ", limit);

    x = 1;
    for (; x <= limit; x++) {
        total = 0;
        y = 1;
        for (; y <= x / 2; y++) {
            if (x % y == 0) {
                total += y;
            }
        }
        if (total == x) {
            printf("%d ", x);
            perfectCount++;
        }
    }

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", limit, perfectCount);

    return 0;
}