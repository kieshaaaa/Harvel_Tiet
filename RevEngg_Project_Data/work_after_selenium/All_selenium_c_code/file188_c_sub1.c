#include <stdio.h>

int main() {
    int rows;
    printf("Enter the number of rows: ");
    scanf("%d", &rows);
    
    if (rows < 1) {
        printf("Invalid input. Please enter a positive number.\n");
        return 0;
    }
    
    int half = (rows + 1) / 2;
    
    for (int i = 1; i <= rows; i++) {
        int stars = i <= half ? i : rows + 1 - i;
        int spaces = rows - 2 * stars;
        
        for (int j = 1; j <= stars; j++) {
            printf("*");
        }
        
        for (int j = 1; j <= spaces; j++) {
            printf(" ");
        }
        
        for (int j = 1; j <= stars; j++) {
            printf("*");
        }
        
        printf("\n");
    }
    return 0;
}