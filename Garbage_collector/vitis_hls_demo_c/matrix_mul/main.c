#include <stdio.h>
#include "mat_mul.h" // Include the header file

#define ROWS 3
#define COLS 3



int main() {
    int matrix1[ROWS][COLS] = {{1, 2, 3},
                               {4, 5, 6},
                               {7, 8, 9}};

    int matrix2[ROWS][COLS] = {{9, 8, 7},
                               {6, 5, 4},
                               {3, 2, 1}};

    int result[ROWS][COLS];

    multiplyMatrix(matrix1, matrix2, result); // Call the matrix multiplication function
    
    //printf("Resultant Matrix:\n");
    //printMatrix(result);
    //printf("\n");

    return 0;
}

