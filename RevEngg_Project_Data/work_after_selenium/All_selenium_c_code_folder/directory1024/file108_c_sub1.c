#include <stdio.h>

int main() {
    int arr[100], size, num, position, i;

    printf("Enter size of the array : ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        printf("Enter element %d : ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Enter element to insert : ");
    scanf("%d", &num);
    printf("Enter the position to insert : ");
    scanf("%d", &position);

    if(position < 1 || position > size + 1) {
        printf("Invalid position! Must be between 1 and %d\n", size + 1);
    } else {
        i = size;
        while(i >= position) {
            arr[i] = arr[i - 1];
            i--;
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