#include <stdio.h>

int main() {
    int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int even_sum = 0, odd_sum = 0;
    int i = 0;
    
    while (i < 10) {
        if (array[i] % 2 == 0) {
            even_sum += array[i];
        } else {
            odd_sum += array[i];
        }
        i++;
    }
    
    printf("The sum of even numbers in the given array is ");
    printf("%d \n", even_sum);
    printf("The sum of odd numbers in the given array is ");
    printf("%d \n", odd_sum);

    return 0;
}