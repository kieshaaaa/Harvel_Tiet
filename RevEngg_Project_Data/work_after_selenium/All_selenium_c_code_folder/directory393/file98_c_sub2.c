#include <stdio.h>

int main() {
    int arr[100];
    int size, temp;

    printf("Enter size of the array: ");
    scanf("%d", &size);
    printf("\nEnter elements in array:\n");

    for(int i = 0; i < size; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    for(int i = 0; i < size / 2; i++) {
        temp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = temp;
    }

    printf("\nReversed array: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}