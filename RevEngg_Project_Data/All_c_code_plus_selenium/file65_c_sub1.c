#include <stdio.h>

int main() {
    int arr[100], n, count = 0;
    int i = 0;

    printf("Enter size of the array : ");
    scanf("%d", &n);

    while (i < n) {
        printf("Enter element %d in array : ", i + 1);
        scanf("%d", &arr[i]);
        i++;
    }

    for (i = 0; i < n; i++) {
        if (arr[i] < 0) {
            count++;
        }
    }

    printf("Total number of negative elements = %d", count);

    return 0;
}