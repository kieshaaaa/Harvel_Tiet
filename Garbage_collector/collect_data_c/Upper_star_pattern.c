#include <stdio.h>

int main() {
    int i, j, k;
    int n; // Number of rows

    printf("Enter the number of rows: ");
    scanf("%d", &n);

    for(i = n; i >= 1; i--) {
        // Print leading spaces
        for(j = n; j > i; j--) {
            printf("  ");
        }
        // Print stars
        for(k = 1; k <= (2*i - 1); k++) {
            printf("* ");
        }
        printf("\n");
    }

    return 0;
}
