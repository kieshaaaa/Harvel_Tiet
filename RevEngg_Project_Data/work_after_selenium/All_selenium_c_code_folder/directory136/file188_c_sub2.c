#include <stdio.h>

int main() {
    int rows;
    printf("Enter the number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }

    for (int i = 1; i <= rows; i++) {
        int limit = i <= rows / 2 ? i : rows - i + 1;
        
        for (int j = 1; j <= limit; j++) {
            printf("*");
        }
        
        for (int j = 1; j <= rows - 2 * limit; j++) {
            printf(" ");
        }
        
        for (int j = 1; j <= limit; j++) {
            printf("*");
        }
        
        printf("\n");
    }
    return 0;
}