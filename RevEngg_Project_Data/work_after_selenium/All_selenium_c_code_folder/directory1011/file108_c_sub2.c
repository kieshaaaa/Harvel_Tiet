#include <stdio.h>

int main() {
    int arr[100], size, num, position, i;

    printf("Enter size of the array: ");
    scanf("%d", &size);
    if(size >= 100) {
        printf("Array is full, cannot insert more elements.\n");
        return 0;
    }

    for(i = 0; i < size; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Enter element to insert: ");
    scanf("%d", &num);
    printf("Enter the position to insert: ");
    scanf("%d", &position);

    if(position < 1 || position > size + 1) {
        printf("Invalid position! Must be between 1 and %d\n", size + 1);
    } else {
        for(i = size; i >= position; i--) {
            arr[i] = arr[i - 1];
        }
        arr[position - 1] = num;
        size++;

        printf("Array after insertion: ");
        for(i = 0; i < size; i++) {
            printf("%d ", arr[i]);
        }
    }

    return 0;
}