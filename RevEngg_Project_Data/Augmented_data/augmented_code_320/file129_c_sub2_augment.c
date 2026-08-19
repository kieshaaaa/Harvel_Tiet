#include <stdio.h>

int main() {
    int data[100], j, n, largest, smallest;
    printf("Enter size of the array: ");
    scanf("%d", &n);

    j = 0;
    while (j < n) {
        printf("Element %d: ", j);
        scanf("%d", &data[j]);
        if (j == 0) {
            largest = smallest = data[0];
        } else {
            if (data[j] > largest) largest = data[j];
            if (data[j] < smallest) smallest = data[j];
        }
        j++;
    }

    printf("Maximum element = %d\n", largest);
    printf("Minimum element = %d\n", smallest);

    return 0;
}