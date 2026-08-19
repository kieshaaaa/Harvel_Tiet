#include <stdio.h>

int main() {
    int n;
    printf("\nEnter the size of the square: ");
    scanf("%d", &n);

    if (n < 1) {
        printf("\nInvalid input. Please enter a positive number.");
        return 0;
    }

    printf("\n");

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == 0 || i == n - 1 || j == 0 || j == n - 1)
                putchar('*');
            else
                putchar(' ');
        }
        putchar('\n');
    }

    return 0;
}