#include <stdio.h>

int main() {
    int arr[5] = {0}, i, j, temp;

    printf("Enter 5 numbers:\n");
    for (i = 0; i < 5; ++i) {
        scanf("%d", &arr[i]);
    }

    for (i = 1; i < 5; ++i) {
        for (j = i; j > 0 && arr[j - 1] > arr[j]; --j) {
            temp = arr[j];
            arr[j] = arr[j - 1];
            arr[j - 1] = temp;
        }
    }

    printf("Sorted Array:\n");
    for (i = 0; i < 5; ++i) {
        printf("%d\n", arr[i]);
    }

    return 0;
}