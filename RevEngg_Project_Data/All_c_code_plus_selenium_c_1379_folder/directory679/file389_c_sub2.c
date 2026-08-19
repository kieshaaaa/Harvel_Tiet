#include <stdio.h>

int main() {
    int limit, first = 0, second = 1, i = 0;

    printf("Enter the limit for the Fibonacci series: ");
    scanf("%d", &limit);

    printf("Fibonacci Series:\n");
    while (i < limit) {
        if (i <= 1) {
            printf("%d ", i);
        } else {
            printf("%d ", first + second);
            // Swap technique without a temporary variable
            second += first; // second becomes the sum
            first = second - first; // update first to the old second
        }
        i++;
    }
    printf("\n");
    return 0;
}