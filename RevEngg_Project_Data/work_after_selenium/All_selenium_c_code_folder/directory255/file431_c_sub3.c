#include <stdio.h>

int main() {
    int arr[100], n, pos;
    printf("Enter the number of elements in the array (1-100): ");
    scanf("%d", &n);

    if (n < 1 || n > 100) {
        printf("Invalid number of elements!\n");
        return 1; // Early exit if the input is invalid
    }

    for (int i = 0; i < n; i++) {
        printf("Enter element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Enter the position of the element you want to delete (1-%d): ", n);
    scanf("%d", &pos);

    if (pos < 1 || pos > n) {
        printf("Invalid position!\n");
        return 1; // Early exit if the position is invalid
    }

    for (int i = pos - 1; i < n - 1; i++) {
        arr[i] = arr[i + 1];
    }
    n--;

    printf("Array after deletion:\n");
    for (int i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}