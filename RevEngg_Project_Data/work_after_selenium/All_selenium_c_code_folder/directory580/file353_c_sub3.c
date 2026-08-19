#include <stdio.h>

int main() {
    int arr[100], size;
    int i, j, k;
    
    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array: \n");
    for(i = 0; i < size; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    // Process for identifying and removing non-unique elements
    for(i = 0; i < size; i++) {
        for(j = i + 1; j < size; j++) {
            if(arr[i] == arr[j]) {
                // Shift elements to the left
                for(k = j; k < size - 1; k++) {
                    arr[k] = arr[k + 1];
                }
                size--; // Reduce size of array
                j--; // Decrement j to check at the new position
            }
        }
    }

    printf("\nAll unique elements in the array are: ");
    for(i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}