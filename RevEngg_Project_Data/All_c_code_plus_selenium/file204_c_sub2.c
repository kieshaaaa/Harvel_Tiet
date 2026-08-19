#include <stdio.h>

int main() {
    int n, sum = 0;
    printf("Enter a positive integer (n) to find the nth hexagonal number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    for (int i = 1; i <= n; ++i) {
        sum += (4 * i - 2);
    }
    printf("The %dth hexagonal number is: %d\n", n, sum);

    return 0;
}