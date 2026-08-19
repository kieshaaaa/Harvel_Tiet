#include <stdio.h>

int main() {
    int arr[100], i, n, position;

    printf("Enter size of the array (up to 100): ");
    scanf("%d", &n);
    if (n > 100 || n <= 0) {
        printf("Invalid size!\n");
        return 1; // Early exit for invalid array size
    }

    printf("Enter elements in array:\n");
    for (i = 0; i < n; ++i) {
        scanf("%d", &arr[i]);
    }

    printf("Enter position of element to delete (1 to %d): ", n);
    scanf("%d", &position);
    if (position > n || position <= 0) {
        printf("Invalid position!\n");
        return 1; // Early exit for invalid position
    }

    for (i = position; i < n; ++i) {
        arr[i - 1] = arr[i];
    }
    --n; // Decrease array size

    printf("Array after deletion:\n");
    for (i = 0; i < n; ++i) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}