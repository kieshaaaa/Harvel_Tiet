#include <stdio.h>

int main() {
    int line, i, j, k;
    printf("Enter the no. of lines: ");
    scanf("%d", &line);

    for(i = 0; i < line; i++) {
        // Print leading spaces
        for(j = 1; j < line - i; j++) {
            printf(" ");
        }
        // Calculate and print the values in the Pascal triangle row
        long value = 1;
        for(j = 0; j <= i; j++) {
            if (j > 0) {
                value = value * (i - j + 1) / j;
            }
            printf("%ld ", value);
        }
        printf("\n");
    }
    return 0;
}