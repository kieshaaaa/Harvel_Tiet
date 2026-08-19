#include <stdio.h>

int main() {
    int rows;
    printf("Enter the number of rows: ");
    scanf("%d", &rows);

    if (rows < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }

    int spaces = 0;
    for (int i = 1; i <= rows; i++) {
        int stars = (i <= rows / 2 ? i : rows - i + 1);
        spaces = (rows - 2 * stars) / 2;
        
        for (int j = 1; j <= stars; j++) {
            printf("*");
        }
        
        for (int j = 1; j <= rows - 2 * stars; j++) {
            printf(" ");
        }
        
        for (int j = 1; j <= stars; j++) {
            printf("*");
        }
        
        printf("\n");
    }
    return 0;
}