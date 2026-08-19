#include <stdio.h>

int main() {
    int arr[100], size, count[100] = {0};
    int i, j;
    
    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array: \n");
    for(i = 0; i < size; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    // Mark non-unique elements
    for(i = 0; i < size; i++) {
        for(j = i+1; j < size; j++) {
            if(arr[i] == arr[j]) {
                count[i]++;
                count[j]++;
            }
        }
    }

    printf("\nAll unique elements in the array are: ");
    for(i = 0; i < size; i++) {
        if(count[i] == 0) {
            printf("%d ", arr[i]);
        }
    }

    return 0;
}