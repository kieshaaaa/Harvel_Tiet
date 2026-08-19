#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    for (int row = maxRows; row >= 1; row--) {
        int numAtCol = row;
        for (int col = 1; col <= row; col++) {
            printf("%d", numAtCol);
            numAtCol++;
        }
        printf("\n");
    }
    return 0;
}