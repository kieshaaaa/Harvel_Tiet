#include<stdio.h>

int main() {
    int n, i, j;
    printf("Enter how many lines you want to print? ");
    scanf("%d", &n);

    // Pattern 1: Incrementing number in each row
    printf("\n------------ Pattern 1 ----------- \n\n");
    for(i = 1; i <= n; i++) {
        for(j = 1; j <= i; j++) {
            printf("%d ", i);
        }
        printf("\n");
    }

    // Pattern 2: Reverse incrementing number in each row
    printf("\n------------ Pattern 2 ----------- \n\n");
    for(i = n; i >= 1; i--) {
        for(j = 1; j <= i; j++) {
            printf("%d ", i);
        }
        printf("\n");
    }

    // Pattern 3: Incremented numbers but in reverse order for each row
    printf("\n------------ Pattern 3 ----------- \n\n");
    for(i = n; i >= 1; i--) {
        for(j = i; j >= 1; j--) {
            printf("%d ", i);
        }
        printf("\n");
    }

    return 0;
}