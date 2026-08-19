#include <stdio.h>

int main() {
    int arr[100], size, i, num, foundPos = -1;

    printf("Enter size of array: ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Search element: ");
    scanf("%d", &num);

    for(i = 0; i < size; i++) {
        if(arr[i] == num) {
            foundPos = i;
            break;
        }
    }

    if(foundPos != -1) {
        printf("%d found at position %d\n", num, foundPos + 1);
    } else {
        printf("%d not found\n", num);
    }

    return 0;
}