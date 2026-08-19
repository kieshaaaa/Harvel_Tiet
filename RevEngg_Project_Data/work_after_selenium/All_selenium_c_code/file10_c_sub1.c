#include <stdio.h>

int main() {
    int n;
    printf("Enter the number of rows: ");
    scanf("%d", &n);

    if (n < 1) {
        printf("Please enter a positive number.");
        return 0;
    }

    for (int i = 1; i <= n; i++) {
        for (int j = 1; j < i; j++) {
            printf("  ");
        }
        for (int j = i; j <= n; j++) {
            printf("%d ", j);
        }
        printf("\n");
    }

    return 0;
}