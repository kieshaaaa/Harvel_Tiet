#include <stdio.h>

int main() {
    int rows, i, j;
    printf("Enter number of rows: ");
    scanf("%d", &rows);

    for(i=1; i<=rows; i++) {
        // Determine the total number of characters to be printed in each row
        int totalChars = rows - 1 + i;
        for(j=1; j<=totalChars; j++) {
            if(j >= rows - (i - 1)) {
                printf("*");
                if(j < totalChars) { // Add a space after each star except the last one in each row
                    printf(" ");
                }
            } else {
                printf(" ");
            }
        }
        printf("\n");
    }

    return 0;
}