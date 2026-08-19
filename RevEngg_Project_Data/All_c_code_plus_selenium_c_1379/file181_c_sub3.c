#include <stdio.h>

int main() {
    int n;
    printf("Enter a positive integer: ");
    scanf("%d", &n);

    if (n > 0) {
        int pentagonal = (3 * n - 1) * n / 2;
        printf("The %dth pentagonal number is: ", n);
        printf("%d\n", pentagonal);
    } else {
        printf("Input must be a positive integer.\n");
        return 1;
    }

    return 0;
}