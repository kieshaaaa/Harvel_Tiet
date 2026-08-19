#include <stdio.h>

int findLargest(int arr[], int size) {
    int largest = arr[0];
    
    for (int i = 1; i < size; i++) {
        if (arr[i] > largest) {
            largest = arr[i];
        }
    }
    
    return largest;
}

int findSmallest(int arr[], int size) {
    int smallest = arr[0];
    
    for (int i = 1; i < size; i++) {
        if (arr[i] < smallest) {
            smallest = arr[i];
        }
    }
    
    return smallest;
}

int main() {
    int numbers[] = {45, 12, 67, 23, 9, 56, 89, 34};
    int size = sizeof(numbers) / sizeof(numbers[0]);
    
    int largest = findLargest(numbers, size);
    int smallest = findSmallest(numbers, size);
    
    printf("Largest element: %d\n", largest);
    printf("Smallest element: %d\n", smallest);
    
    return 0;
}
