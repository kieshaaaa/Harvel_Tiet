#include <stdio.h>

int main() {
    int size, i, j;

    printf("\nEnter the size for the pattern: ");
    scanf("%d", &size);
    if (size < 1) {
        printf("\nInvalid input. Please enter a positive number.\n");
        return -1;
    }

    for(i = 1; i <= size; i++) {
        for(j = 1; j <= size * 2; j++) {
            if(j == i || j == (size * 2) - i + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    for(i = size - 1; i > 0; i--) {
        for(j = 1; j <= size * 2; j++) {
            if(j == i || j == (size * 2) - i + 1) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}