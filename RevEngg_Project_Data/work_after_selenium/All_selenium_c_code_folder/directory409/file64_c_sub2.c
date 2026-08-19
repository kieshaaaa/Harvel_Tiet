#include <stdio.h>

int main() {
    int rows = 5;

    // Upper Pyramid
    for(int i = 0; i < rows; i++) {
        for(int j = 0; j < rows - i; j++) {
            printf(" ");
        }
        for(int j = 0; j < 2 * i + 1; j++) {
            printf("*");
        }
        printf("\n");
    }

    // Lower Pyramid
    for(int i = rows - 2; i >= 0; i--) {
        for(int j = 0; j < rows - i; j++) {
            printf(" ");
        }
        for(int j = 0; j < 2 * i + 1; j++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}