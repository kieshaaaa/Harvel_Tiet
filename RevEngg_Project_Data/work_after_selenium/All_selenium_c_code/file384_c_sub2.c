#include <stdio.h>

int main() {
    int line, i, j;
    printf("Enter the no. of lines: ");
    scanf("%d", &line);

    for (i = 0; i < line; i++) {
        for (j = 0; j < line - i - 1; j++) {
            printf(" ");
        }
        long value = 1;
        for (j = 0; j <= i; j++) {
            if (j != 0) {
                value = value * (i - j + 1) / j;
            }
            printf("%ld ", value);
        }
        printf("\n");
    }
    return 0;
}