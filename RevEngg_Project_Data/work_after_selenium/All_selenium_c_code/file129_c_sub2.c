#include <stdio.h>

int main() {
    int arr[100], i, size, max, min;
    printf("Enter size of the array: ");
    scanf("%d", &size);

    for (i = 0; i < size; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
        if (i == 0) {
            max = min = arr[0];
        } else {
            if (arr[i] > max) max = arr[i];
            if (arr[i] < min) min = arr[i];
        }
    }

    printf("Maximum element = %d\n", max);
    printf("Minimum element = %d\n", min);

    return 0;
}