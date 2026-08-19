#include <stdio.h>

int main() {
    int arr[100], n, i;

    printf("Size of the array: ");
    scanf("%d", &n);

    printf("Enter elements:\n");
    for(i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }

    printf("Negative and zero elements:");
    for(i = 0; i < n; i++) {
        if(arr[i] <= 0) {
            printf(" %d", arr[i]);
        }
    }

    return 0;
}