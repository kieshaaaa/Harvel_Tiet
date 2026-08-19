#include <stdio.h>

int main() {
    int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
    int sum = 0;
    int i = 0;
    
    while (i < 9) {
        sum += array[i];
        i++;
    }
    
    printf("\nThe sum of all array elements is : %d", sum);
    
    return 0;
}