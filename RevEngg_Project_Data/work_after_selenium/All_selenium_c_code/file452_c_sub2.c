#include <stdio.h>

int main() {
    int size;
    printf("\nEnter the size: ");
    scanf("%d", &size);

    if (size < 1) {
        printf("\nInvalid input. Please enter a positive number.");
        return 0;
    }

    printf("\n");

    for (int r = 0; r < size; r++) {
        for (int c = 0; c < size; c++) {
            printf("%c", (r == 0 || r == size - 1 || c == 0 || c == size - 1) ? '*' : ' ');
        }
        printf("\n");
    }

    return 0;
}