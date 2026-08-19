#include <stdio.h>

int main() {
    int arr[100], size;
    int i, j, isUnique;
    
    printf("Enter size of array: ");
    scanf("%d", &size);

    printf("\nEnter elements in array: \n");
    for(i = 0; i < size; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
    }

    printf("\nAll unique elements in the array are: ");
    for(i = 0; i < size; i++) {
        isUnique = 1;
        for(j = 0; j < size; j++) {
            if(i != j && arr[i] == arr[j]) {
                isUnique = 0;
                break;
            }
        }
        if(isUnique) {
            printf("%d ", arr[i]);
        }
    }

    return 0;
}