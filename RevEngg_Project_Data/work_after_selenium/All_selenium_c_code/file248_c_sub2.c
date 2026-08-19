#include <stdio.h>

int main() {
    int array[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    int sum = 0;
    
    for (int i = 0; i < 9; ++i) {
        sum += array[i];
    }
    
    printf("\nThe sum of all array elements is : %d", sum);
    
    return 0;
}