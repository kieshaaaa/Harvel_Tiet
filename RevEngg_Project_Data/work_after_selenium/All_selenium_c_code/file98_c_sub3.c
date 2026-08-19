#include <stdio.h>

int main() {
    int arr[100], reversed[100];
    int size;

    printf("Enter size of the array: ");
    scanf("%d", &size);
    printf("\nEnter elements in array:\n");

    for(int i = 0; i < size; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    for(int i = 0; i < size; i++) {
        reversed[size - 1 - i] = arr[i];
    }

    printf("\nReversed array: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", reversed[i]);
    }

    return 0;
}