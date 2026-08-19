#include <stdio.h>

int main() {
    int size;
    printf("Enter the pattern size: ");
    scanf("%d", &size);
    if (size <= 0) {
        printf("Please enter a positive number.");
        return 0;
    }
    size = size % 2 == 0 ? size + 1 : size;
    for (int row = 1; row <= size; row++) {
        for (int col = 1; col <= size; col++) {
            char toPrint = (col == size / 2 + 1 || row == size / 2 + 1) ? '*' : ' ';
            printf("%c", toPrint);
        }
        printf("\n");
    }
    return 0;
}