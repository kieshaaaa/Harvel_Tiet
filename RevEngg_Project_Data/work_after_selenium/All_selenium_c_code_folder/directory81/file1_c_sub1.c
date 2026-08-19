#include <stdio.h>
#define MAX 20

int main() {
    int arr[MAX], n, item;
    int i, found = 0;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    for (i = 0; i < n; i++) {
        printf("Enter %d element :", i + 1);
        scanf("%d", &arr[i]);
    }

    printf("Enter an item to find :");
    scanf("%d", &item);

    for (i = 0; i < n; i++) {
        if (arr[i] == item) {
            found = 1;
            printf("\n%d found @ %d position.\n", item, i);
            break;
        }
    }

    if (!found) {
        printf("\n%d does not exists in array.\n", item);
    }

    return 0;
}