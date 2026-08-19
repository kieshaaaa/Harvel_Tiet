#include <stdio.h>

int main() {
    int n, count = 0;
    printf("Enter a number: ");
    scanf("%d", &n);

    for (int i = 2; i <= n; i++) {
        int isComposite = 0;
        int j = 2;
        while (j*j <= i && !isComposite) {
            if (i % j == 0) {
                isComposite = 1;
            }
            j++;
        }
        if (isComposite) count++;
    }

    printf("Number of composite numbers till ");
    printf("%d", n);
    printf(": ");
    printf("%d\n", count);

    return 0;
}