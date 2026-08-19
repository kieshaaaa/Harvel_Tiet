#include<stdio.h>

int main() {
    int n, i, j, k;
    printf("Enter how many lines you want to print? ");
    scanf("%d", &n);

    // Pattern 1 with leading spaces
    printf("\n------------ Pattern 1 ----------- \n\n");
    for(i = 1; i <= n; i++) {
        for(k = n; k > i; k--) {
            printf("  ");
        }
        for(j = 1; j <= i; j++) {
            printf("%d ", j);
        }
        printf("\n");
    }

    // Inverted Pattern 2 with leading spaces
    printf("\n------------ Pattern 2 ----------- \n\n");
    for(i = n; i >= 1; i--) {
        for(k = n; k > i; k--) {
            printf("  ");
        }
        for(j = 1; j <= i; j++) {
            printf("%d ", j);
        }
        printf("\n");
    }

    // Pattern 3 with numbers in reverse
    printf("\n------------ Pattern 3 ----------- \n\n");
    for(i = 1; i <= n; i++) {
        for(k = 1; k < i; k++) {
            printf("  ");
        }
        for(j = i; j >= 1; j--) {
            printf("%d ", j);
        }
        printf("\n");
    }

    return 0;
}