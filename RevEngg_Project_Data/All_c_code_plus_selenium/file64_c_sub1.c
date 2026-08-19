#include <stdio.h>

int main() {
    int rows = 5;
    int space, star;

    // Upper Pyramid
    for(int line = 1; line <= rows; line++) {
        for(space = rows - line; space > 0; space--) {
            printf(" ");
        }
        for(star = 1; star <= (2 * line - 1); star++) {
            printf("*");
        }
        printf("\n");
    }

    // Lower Pyramid
    for(int line = 1; line <= rows - 1; line++) {
        for(space = 1; space <= line; space++) {
            printf(" ");
        }
        for(star = (2 * rows - 1) - (2 * line); star > 0; star--) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}