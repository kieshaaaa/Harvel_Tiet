#include <stdio.h>

int main() {
    int arr[100], i, n, position;

    printf("Array size: ");
    scanf("%d", &n);

    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Delete position: ");
    scanf("%d", &position);

    if (position > 0 && position <= n) {
        for (i = position; i < n; i++) {
            arr[i - 1] = arr[i];
        }
        n--;
    } else {
        printf("Position out of range.\n");
        return 1;
    }

    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    return 0;
}