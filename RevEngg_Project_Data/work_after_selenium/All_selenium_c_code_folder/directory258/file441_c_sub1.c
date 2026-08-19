#include <stdio.h>

int main() {
    int n, count = 0;
    printf("Enter a number: ");
    scanf("%d", &n);

    for (int i = 2; i <= n; i++) {
        int isComposite = 0;
        for (int j = 2; j*j <= i; j++) {
            if (i % j == 0) {
                isComposite = 1;
                break;
            }
        }
        count += isComposite;
    }

    printf("Number of composite numbers till ");
    printf("%d", n);
    printf(": ");
    printf("%d\n", count);

    return 0;
}