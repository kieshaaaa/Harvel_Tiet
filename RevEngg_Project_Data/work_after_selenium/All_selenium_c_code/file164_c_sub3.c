#include <stdio.h>

int main() {
    int lines;
    printf("\nEnter number of lines: ");
    scanf("%d", &lines);
    if (lines < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return 0;
    }

    for (int row = 1; row <= lines; row++) {
        for (int space = lines - row; space > 0; space--) {
            printf("  ");
        }
        for (int star = 1; star <= row; star++) {
            printf("* ");
        }
        printf("\n");
    }

    return 0;
}