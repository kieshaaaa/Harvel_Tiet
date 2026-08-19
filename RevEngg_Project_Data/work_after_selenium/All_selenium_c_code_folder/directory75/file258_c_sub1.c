#include <stdio.h>

int main() {
    int arr[100], n, i, j, count = 0;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Element %d: ", i + 1);
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

    printf("Duplicate elements: %d\n", count);
    return 0;
}