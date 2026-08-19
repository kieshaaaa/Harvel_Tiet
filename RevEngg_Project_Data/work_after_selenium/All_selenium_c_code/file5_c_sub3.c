#include <stdio.h>

int main() {
    int length;
    printf("Input the length of the pattern: ");
    scanf("%d", &length);
    if (length < 1) {
        printf("Invalid number, please input a positive integer.");
        return 0;
    }
    length = (length % 2 == 0) ? length + 1 : length; // Adjusting to make sure it's odd
    for (int x = 0; x < length; x++) {
        for (int y = 0; y < length; y++) {
            if (x == length / 2 || y == length / 2) {
                printf("*");
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }
    return 0;
}