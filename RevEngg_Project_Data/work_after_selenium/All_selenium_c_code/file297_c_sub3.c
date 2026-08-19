#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    if (maxRows < 1) {
        printf("\n!!! Invalid Input, Please Enter Positive Number....\n");
        return 0;
    }

    printf("\n--------------------------------------------\n");

    for (int row = 1; row <= maxRows; row++) {
        // Calculate number of spaces and stars for the current row
        int numSpaces = maxRows - row;
        int numStars = row * 2 - 1;

        // Print spaces
        for (int s = 0; s < numSpaces; s++) {
            printf(" ");
        }

        // Print stars
        for (int s = 0; s < numStars; s++) {
            printf("*");
        }

        printf("\n");
    }

    return 0;
}