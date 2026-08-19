#include <stdio.h>

int main() {
    int arr[100];
    int size, i, j, min_index, temp;

    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array: \n");
    for(i = 0; i < size; i++) {
        printf("\nEnter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    for(i = 0; i < size - 1; i++) {
        min_index = i;
        for(j = i + 1; j < size; j++) {
            if(arr[j] < arr[min_index]) {
                min_index = j;
            }
        }
        if(min_index != i) {
            temp = arr[i];
            arr[i] = arr[min_index];
            arr[min_index] = temp;
        }
    }

    printf("\nElements of array in sorted ascending order: ");
    for(i = 0; i < size; i++) {
        printf(" %d ", arr[i]);
    }

    return 0;
}