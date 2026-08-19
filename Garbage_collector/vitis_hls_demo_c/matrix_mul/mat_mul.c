#include "mat_mul.h"

#define ROWS 3
#define COLS 3


void multiplyMatrix(int mat1[][COLS], int mat2[][COLS], int result[][COLS]) {
    int i, j, k;

    multiplyMatrix_label1:for (i = 0; i < ROWS; i++) {
        multiplyMatrix_label0:for (j = 0; j < COLS; j++) {
            result[i][j] = 0;
            for (k = 0; k < COLS; k++) {
                result[i][j] += mat1[i][k] * mat2[k][j];
            }
        }
    }
}
