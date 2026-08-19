#include <stdio.h>
#define MAX 20

int main() {
    int arr[MAX], n, item;
    char cont = 'y';
    int i;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    for (i = 0; i < n; i++) {
        printf("Enter %d element :", i + 1);
        scanf("%d", &arr[i]);
    }

    while (cont == 'y' || cont == 'Y') {
        printf("Enter an item to find :");
        scanf("%d", &item);

        for (i = 0; i < n; i++) {
            if (arr[i] == item) {
                printf("\n%d found @ %d position.\n", item, i);
                break;
            }
        }

        if (i == n) {
            printf("\n%d does not exist in array.\n", item);
        }

        printf("Do you want to search another item? (y/n): ");
        scanf(" %c", &cont); // Notice the space before %c to catch any newline character left in the input buffer
    }

    return 0;
}