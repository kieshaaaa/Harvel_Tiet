#include <stdio.h>

int main() {
    int arr[100], size, i, j, maxIdx, temp;

    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array:\n");
    for (i = 0; i < size; i++) {
        printf("Enter %d element: ", i + 1);
        scanf("%d", &arr[i]);
    }

    for (i = 0; i < size - 1; i++) {
        maxIdx = i;
        for (j = i + 1; j < size; j++) {
            if (arr[j] > arr[maxIdx]) {
                maxIdx = j;
            }
        }
        if (maxIdx != i) {
            temp = arr[i];
            arr[i] = arr[maxIdx];
            arr[maxIdx] = temp;
        }
    }

    printf("\nArray in descending order: ");
    for (i = 0; i < size; i++) {
        printf("%d ", arr[i]);
    }

    return 0;
}