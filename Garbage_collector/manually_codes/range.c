#include <stdio.h>

int main() {
    int data[10]; // Fixed size array with 10 elements
    int size = 10; // Size of the array
    printf("Enter 10 elements in the array:\n");
    for(int i = 0; i < size; i++) {
        scanf("%d", &data[i]);
    }

    int min = data[0];
    int max = data[0];
    int range;

    // Find minimum and maximum values in the array
    for(int i = 1; i < size; ++i) {
        if(data[i] < min) {
            min = data[i];
        }
        if(data[i] > max) {
            max = data[i];
        }
    }

    // Calculate the range
    range = max - min;

    printf("Minimum value: %d\n", min);
    printf("Maximum value: %d\n", max);
    printf("Range: %d\n", range);

   
