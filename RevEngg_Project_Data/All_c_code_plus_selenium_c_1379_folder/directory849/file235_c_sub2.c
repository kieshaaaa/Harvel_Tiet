#include <stdio.h>

int main() {
    int rows, i, j, k;
    printf("Enter number of rows: ");
    scanf("%d", &rows);

    for(i=1; i<=rows; i++) {
        char line[200] = {0}; // Assuming max number of columns won't exceed 200
        k = 0;

        // Add leading spaces to the line
        for(j=1; j<=rows-i; j++, k++) {
            line[k] = ' ';
        }
        // Add stars to the line
        for(j=1; j<=i; j++, k+=2) {
            line[k] = '*';
            if(j < i) { // Avoid adding an extra space after the last star
                line[k+1] = ' ';
            }
        }
        printf("%s\n", line);
    }

    return 0;
}