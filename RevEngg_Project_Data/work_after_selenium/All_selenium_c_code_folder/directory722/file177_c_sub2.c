#include <stdio.h>

int main() {
    int maxRows;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    int num = 1;
    for (int row = 1; row <= maxRows; row++) {
        for (int col = 1; col <= maxRows; col++) {
            printf("%d", num);
            num++;  // Increment num for each column in the row
        }
        printf("\n");
    }
    return 0;
}