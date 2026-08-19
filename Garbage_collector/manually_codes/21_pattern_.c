#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

// // Main Function Start
int main()
{
    int maxRows, maxCols;
    int row;
    int col;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

   
    // // Determine Number of Columns According to maxRows
    maxCols = maxRows;

    // // Print Pattern
   
 for (row = 1; row <= maxRows; row++)
 {
    for ( col = row; col <= row * 2 - 1; col++)
        printf("%d", col);
   printf("\n");
 }

