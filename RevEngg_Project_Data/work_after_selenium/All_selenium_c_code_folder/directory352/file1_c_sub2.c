#include <stdio.h>
#define MAX 20

int main() {
    int arr[MAX], n, item;
    int i = 0, found = 0;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    while (i < n) {
        printf("Enter %d element :", i + 1);
        scanf("%d", &arr[i]);
        i++;
    }

    i = 0; // Resetting i for reuse
    printf("Enter an item to find :");
    scanf("%d", &item);

    while (i < n) {
        if (arr[i] == item) {
            found = 1;
            printf("\n%d found @ %d position.\n", item, i);
            break;
        }
        i++;
    }

    if (!found) {
        printf("\n%d does not exists in array.\n", item);
    }

    return 0;
}