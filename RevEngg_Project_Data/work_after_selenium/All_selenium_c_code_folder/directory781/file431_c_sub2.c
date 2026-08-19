#include <stdio.h>

int main() {
    int arr[100] = {0}; // Initialize all elements to 0
    int n = 10; // Example size
    int pos;

    // Pre-fill the array with example values
    for (int i = 0; i < n; i++) {
        arr[i] = i + 1; // Fill array with numbers 1 to n
    }

    printf("Pre-filled array of 10 elements.\n");

    printf("Enter the position of the element you want to delete: ");
    scanf("%d", &pos);

    if (pos < 1 || pos > n) {
        printf("Invalid position!\n");
    } else {
        for (int i = pos - 1; i < n - 1; i++) {
            arr[i] = arr[i + 1];
        }
        n--;

        printf("Array after deletion:\n");
        for (int i = 0; i < n; i++) {
            printf("%d ", arr[i]);
        }
        printf("\n");
    }
    return 0;
}