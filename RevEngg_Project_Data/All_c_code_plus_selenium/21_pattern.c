// // Header Files
#include <stdio.h>
#include <stdlib.h>

// // Main Function Start
int main()
{
    int maxRows, maxCols;
    int numAtCol;
    int col;
    int row;
    printf("\nHow Many Rows => ");
    scanf("%d", &maxRows);

    // // Determine Number of Columns According to maxRows
    maxCols = maxRows;

    // // Print Pattern
 
    // // 1st Approach


    for (row = 1; row <= maxRows; row++)
    {
        numAtCol = row;

        for (col = 1; col <= row; col++)
        {
            numAtCol = numAtCol + 1;
            printf("%d", numAtCol);
        }
        printf("\n");
    }

return 0;
}
