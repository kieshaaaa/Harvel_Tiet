#include <stdio.h>

int main() {
    int rows;
    printf("Enter number of rows: ");
    scanf("%d", &rows);
    
    if (rows < 1) {
        printf("Please enter a positive number.");
        return 0;
    }
    
    for (int i = 1; i <= rows; i++) {
        for (int j = i; j >= 1; j--) {
            printf("%d ", j);
        }
        printf("\n");
    }
    
    return 0;
}