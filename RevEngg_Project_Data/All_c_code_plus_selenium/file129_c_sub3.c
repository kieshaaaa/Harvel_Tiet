#include <stdio.h>

int main() {
    int arr[100], size, max, min;
    printf("Enter size of the array: ");
    scanf("%d", &size);

    if (size > 0 && size <= 100) {
        for (int i = 0; i < size; i++) {
            printf("Element %d: ", i + 1);
            scanf("%d", &arr[i]);
            if (i == 0) {
                max = min = arr[i];
                continue;
            }
            max = (arr[i] > max) ? arr[i] : max;
            min = (arr[i] < min) ? arr[i] : min;
        }
        printf("Maximum element = %d\n", max);
        printf("Minimum element = %d\n", min);
    } else {
        printf("Invalid array size.\n");
    }

    return 0;
}