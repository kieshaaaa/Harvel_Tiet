#include <stdio.h>

int main() {
    int array_1[5] = {0, 1, 2, 3, 4};
    int array_2[5] = {5, 6, 7, 8, 9};
    int temp, i;
    
    for(i = 0; i < 5; i++) {
        temp = array_1[i];
        array_1[i] = array_2[i];
        array_2[i] = temp;
    }
    
    printf("\nThe arrays after swap are..\n");
    
    for(i = 0; i < 5; i++) {
        printf("\narray_1 [%d] : %d", i, array_1[i]);
    }
    
    printf("\n");
    
    for(i = 0; i < 5; i++) {
        printf("\narray_2 [%d] : %d", i, array_2[i]);
    }
    
    return 0;
}