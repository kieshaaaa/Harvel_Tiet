#include <stdio.h>

int main() {
    int limit, a, b, total;
    int perfect_count = 0;

    printf("Enter an upper limit: ");
    scanf("%d", &limit);

    printf("Perfect numbers between 1 and %d are: ", limit);

    a = 1;
    while (a <= limit) {
        total = 0;

        // Find the sum of all divisors of a
        b = 1;
        while (b <= a / 2) {
            if (a % b == 0) {
                total += b;
            }
            b++;
        }

        // Check if the sum of divisors is equal to the number itself
        if (total == a) {
            printf("%d ", a);
            perfect_count++;
        }
        a++;
    }

    printf("\nTotal number of perfect numbers between 1 and %d: %d\n", limit, perfect_count);

    return 0;
}