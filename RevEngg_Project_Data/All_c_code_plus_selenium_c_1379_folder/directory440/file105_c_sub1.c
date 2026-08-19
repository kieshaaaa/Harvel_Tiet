#include <stdio.h>

int main() {
    int n, i, j;
    int composite;
    int count = 0;

    printf("Enter a number: ");
    scanf("%d", &n);

    for (i = 4; i <= n; i++) {
        composite = 0;
        for (j = 2; j < i; j++) {
            if (i % j == 0) {
                composite = 1;
                break;
            }
        }
        if (composite) {
            count++;
        }
    }

    printf("Number of composite numbers till %d: %d\n", n, count);
    return 0;
}