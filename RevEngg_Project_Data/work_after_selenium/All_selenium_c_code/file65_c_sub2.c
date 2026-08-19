#include <stdio.h>

int main() {
    int arr[100], n, count = 0;

    printf("Enter size of the array : ");
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        printf("Enter element %d in array : ", i + 1);
        scanf("%d", &arr[i]);
    }

    for (int i = n - 1; i >= 0; i--) {
        if (arr[i] < 0) {
            count++;
        }
    }

    printf("Total number of negative elements = %d", count);

    return 0;
}