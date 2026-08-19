#include <stdio.h>

int main() {
    int arr[5], i, j, temp;

    printf("\nEnter 5 elements: \n");
    for (i = 0; i < 5; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
    }

    printf("\nArray before sorting: ");
    for (i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4 - i; j++) {
            if (arr[j] > arr[j + 1]) {
                temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }

    printf("\nArray after sorting: ");
    for (i = 0; i < 5; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}