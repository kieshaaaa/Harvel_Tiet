#include <stdio.h>

int main() {
    int n, result;
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    if (n > 0) {
        result = (3 * n * n - n) / 2;
        printf("The %dth pentagonal number is: ", n);
        printf("%d\n", result);
    } else {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    return 0;
}