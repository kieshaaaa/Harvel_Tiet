#include <stdio.h>

int main() {
    int arr[100], size, i, temp, needToSort;

    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array:\n");
    for (i = 0; i < size; i++) {
        printf("Enter %d element: ", i + 1);
        scanf("%d", &arr[i]);
    }

    do {
        needToSort = 0;
        for (i = 0; i < size - 1; i++) {
            if (arr[i] < arr[i + 1]) {
                temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;
                needToSort = 1;
            }
        }
    } while (needToSort);

    printf("\nArray in descending order: ");
    for (i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}