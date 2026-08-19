#include <stdio.h>

int main() {
    int arr[100], n, count = 0;

    printf("Enter size of the array : ");
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        printf("Enter element %d in array : ", i + 1);
        scanf("%d", &arr[i]);

        // Ternary operation for counting
        count += (arr[i] < 0) ? 1 : 0;
    }

    printf("Total number of negative elements = %d", count);

    return 0;
}