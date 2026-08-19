#include <stdio.h>

int findLargest(int arr[]) {
    int largest = arr[0]; // Assume the first element as the largest

    // Assuming the array is terminated by a specific value (e.g., -1)
    int i = 1;
    while (arr[i] != -1) {
        if (arr[i] > largest) {
            largest = arr[i]; // Update largest if a larger element is found
        }
        i++;
    }

    return largest;
}

int main() {
    int array[] = {4, 8, 2, 10, 6, 12, -1}; // Array is terminated by -1
    int result = findLargest(array);
    printf("The largest element in the array is: %d\n", result);

    return 0;
}
