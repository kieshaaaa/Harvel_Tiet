#include<stdio.h>

int main() {
    int nums[50], count, k, l, swap;
    printf("Enter number of elements: ");
    scanf("%d", &count);
    
    for(k = 0; k < count; k++) {
        printf("Enter integer number %d: ", k + 1);
        scanf("%d", &nums[k]);
    }

    for (k = 0; k < count - 1; k++) {
        for (l = 0; l < count - k - 1; l++) {
            if (nums[l] < nums[l + 1]) {
                swap = nums[l];
                nums[l] = nums[l + 1];
                nums[l + 1] = swap;
            }
        }
    }

    printf("Sorted list in descending order:");
    for (k = 0; k < count; k++)
        printf(" %d", nums[k]);
    printf("\n");
    return 0;
}