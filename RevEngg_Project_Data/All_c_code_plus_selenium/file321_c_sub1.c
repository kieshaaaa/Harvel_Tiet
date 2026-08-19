#include<stdio.h>

int main() {
    int arr[10], size, searchValue, found = 0;

    printf("Array size: ");
    scanf("%d", &size);

    for (int i = 0; i < size; i++) {
        printf("Element %d: ", i);
        scanf("%d", &arr[i]);
    }

    printf("Search for: ");
    scanf("%d", &searchValue);

    for (int i = 0; i < size; i++) {
        if (arr[i] == searchValue) {
            found = 1;
            break;
        }
    }

    if (found) {
        printf("Number found in the array.\n");
    } else {
        printf("Number not in the list.\n");
    }

    return 0;
}