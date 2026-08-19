#include <stdio.h>

int main() {
    int arr[100], n, i;

    printf("Size of the array: ");
    scanf("%d", &n);

    printf("Enter elements in reverse order:\n");
    for(i = n - 1; i >= 0; i--) {
        scanf("%d", &arr[i]);
    }

    printf("Negative elements, listed in the order of input:");
    for(i = n - 1; i >= 0; i--) {
        if(arr[i] < 0) {
            printf(" %d", arr[i]);
        }
    }

    return 0;
}