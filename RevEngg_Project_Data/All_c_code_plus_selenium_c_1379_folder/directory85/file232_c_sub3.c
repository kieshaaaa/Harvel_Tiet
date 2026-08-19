#include <stdio.h>

int main() {
    int nums[20], count, temp, x, y;
    printf("Total number of elements: ");
    scanf("%d", &count);

    for(x = 0; x < count; x++) {
        printf("Input element %d: ", x + 1);
        scanf("%d", &nums[x]);
    }

    for(x = 1; x < count; x++) {
        temp = nums[x];
        for(y = x; y > 0 && nums[y - 1] > temp; y--) {
            nums[y] = nums[y - 1];
        }
        nums[y] = temp;
    }

    printf("Array after sorting: ");
    for(x = 0; x < count; x++) {
        printf("%d ", nums[x]);
    }
    printf("\n");

    return 0;
}