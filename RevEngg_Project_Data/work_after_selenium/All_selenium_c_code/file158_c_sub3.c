#include <stdio.h>

int main() {
    int size, pos, steps = 0;
    float arr[10], hold;

    printf("\nEnter the size of the array: ");
    scanf("%d", &size);
    
    printf("\nInput %d float numbers: ", size);
    for (pos = 0; pos < size; pos++) {
        scanf("%f", &arr[pos]);
    }

    pos = 0;
    while (pos < size) {
        if (pos == 0 || arr[pos - 1] <= arr[pos]) {
            pos++;
        } else {
            hold = arr[pos];
            arr[pos] = arr[pos - 1];
            arr[pos - 1] = hold;
            pos--;
            steps++;
        }
    }

    printf("\nArray after sorting: ");
    for (pos = 0; pos < size; pos++) {
        printf("%.2f ", arr[pos]);
    }
    printf("\nTotal swapping steps taken: %d", steps);
    return 0;
}