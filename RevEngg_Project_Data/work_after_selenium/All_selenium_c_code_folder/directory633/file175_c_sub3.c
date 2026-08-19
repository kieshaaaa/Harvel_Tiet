#include <stdio.h>

int main() {
    int array[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int even_sum = 0, odd_sum = 0;
    
    for (int i = 0; i < 10; i += 2) {
        even_sum += array[i+1]; // i+1 will always point to even indexed numbers, which are odd in this array
    }
    
    for (int i = 0; i < 10; i += 2) {
        odd_sum += array[i]; // i will always point to odd indexed numbers, which are even in this array
    }
    
    printf("The sum of even numbers in the given array is ");
    printf("%d \n", even_sum);
    printf("The sum of odd numbers in the given array is ");
    printf("%d \n", odd_sum);

    return 0;
}