#include <stdio.h>

int main() {
    int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int even_sum = 0, odd_sum = 0;
    
    for (int i = 0; i < 10; ++i) {
        if ((array[i] & 1) == 0) { // Using bitwise AND to check evenness
            even_sum += array[i];
        } else {
            odd_sum += array[i];
        }
    }
    
    printf("The sum of even numbers in the given array is ");
    printf("%d \n", even_sum);
    printf("The sum of odd numbers in the given array is ");
    printf("%d \n", odd_sum);

    return 0;
}