#include <stdio.h>

int main() {
    int arr[100], n, i, j, count = 0;
    printf("Array size: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Arr[%d] = ", i);
        scanf("%d", &arr[i]);
    }

    for(i = 0; i < n - 1; i++) {
        for(j = i + 1; j < n; j++) {
            if(arr[i] == arr[j]) {
                count++;
                break;
            }
        }
    }

    printf("Duplicates: %d\n", count);
    return 0;
}