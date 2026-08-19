#include <stdio.h>

int main() {
    int lines;
    printf("Enter number of lines: ");
    scanf("%d", &lines);
    if (lines < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }

    int maxWidth = 2 * lines - 1;

    for (int i = 1; i <= lines; i++) {
        // Initial spaces
        for (int j = 1; j < i; j++) {
            printf(" ");
        }
        // Print pattern
        for (int k = 1; k <= maxWidth - 2 * (i - 1); k++) {
            if (i == 1 || k == 1 || k == maxWidth - 2 * (i - 1)) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}