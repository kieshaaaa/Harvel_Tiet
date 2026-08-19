#include <stdio.h>

int main() {
    int arr[100];
    int size, temp, start, end;

    printf("Enter size of the array: ");
    scanf("%d", &size);
    printf("\nEnter elements in array:\n");

    for(int i = 0; i < size; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    start = 0;
    end = size - 1;
    while(start < end) {
        temp = arr[start];
        arr[start] = arr[end];
        arr[end] = temp;
        start++;
        end--;
    }

    printf("\nReversed array: ");
    for(int i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}