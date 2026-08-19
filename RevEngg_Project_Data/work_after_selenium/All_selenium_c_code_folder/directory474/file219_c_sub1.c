#include <stdio.h>

int main() {
    int arr[100], size, i, num, found = 0;

    printf("Enter size of array: ");
    scanf("%d", &size);

    for(i = 0; i < size; ++i) {
        printf("Element %d: ", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Search element: ");
    scanf("%d", &num);

    for(i = 0; i < size && !found; ++i) {
        if(arr[i] == num) {
            found = 1;
            printf("%d found at position %d\n", num, i + 1);
        }
    }

    if(!found) {
        printf("%d not found\n", num);
    }

    return 0;
}