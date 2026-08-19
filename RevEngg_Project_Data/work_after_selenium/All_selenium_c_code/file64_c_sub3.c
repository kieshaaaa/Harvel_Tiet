#include <stdio.h>

int main() {
    int rows = 5;

    // Upper Pyramid
    for(int i = 1; i <= rows; i++) {
        for(int j = rows; j > i; j--) {
            printf(" ");
        }
        for(int k = 0; k < (2 * i - 1); k++) {
            printf("*");
        }
        printf("\n");
    }

    // Lower Pyramid
    for(int i = rows - 1; i >= 1; i--) {
        for(int j = rows; j > i; j--) {
            printf(" ");
        }
        for(int k = 0; k < (2 * i - 1); k++) {
            printf("*");
        }
        printf("\n");
    }

    return 0;
}