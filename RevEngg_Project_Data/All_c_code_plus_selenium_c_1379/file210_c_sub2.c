#include <stdio.h>

int main() {
    int arr[100];
    int size, i, j, key;

    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array: \n");
    for(i = 0; i < size; i++) {
        printf("\nEnter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    for(i = 1; i < size; i++) {
        key = arr[i];
        j = i - 1;

        while(j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j];
            j = j - 1;
        }
        arr[j + 1] = key;
    }

    printf("\nElements of array in sorted ascending order: ");
    for(i = 0; i < size; i++) {
        printf(" %d ", arr[i]);
    }

    return 0;
}