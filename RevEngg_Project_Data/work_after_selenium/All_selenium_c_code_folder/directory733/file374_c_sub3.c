#include<stdio.h>

int main() {
    int i, space;
    char ch = '*';
    for (i = 10; i >= 1; i--) {
        // Print leading spaces
        for (space = 10; space > i; space--) {
            printf("  ");
        }
        // Print stars
        for (int j = 1; j <= i; j++) {
            printf("%c ", ch);
        }
        printf("\n");
    }
    return 0;
}