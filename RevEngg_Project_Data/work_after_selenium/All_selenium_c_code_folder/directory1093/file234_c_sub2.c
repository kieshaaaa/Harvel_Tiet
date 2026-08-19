#include <stdio.h>

int main() {
    int array_1[5] = {0, 1, 2, 3, 4};
    int array_2[5] = {5, 6, 7, 8, 9};
    int temp;
    
    // Manual swapping
    temp = array_1[0]; array_1[0] = array_2[0]; array_2[0] = temp;
    temp = array_1[1]; array_1[1] = array_2[1]; array_2[1] = temp;
    temp = array_1[2]; array_1[2] = array_2[2]; array_2[2] = temp;
    temp = array_1[3]; array_1[3] = array_2[3]; array_2[3] = temp;
    temp = array_1[4]; array_1[4] = array_2[4]; array_2[4] = temp;
    
    printf("\nThe arrays after swap are..\n");
    
    for(int i = 0; i < 5; i++) {
        printf("\narray_1 [%d] : %d", i, array_1[i]);
    }
    
    printf("\n");
    
    for(int i = 0; i < 5; i++) {
        printf("\narray_2 [%d] : %d", i, array_2[i]);
    }
    
    return 0;
}