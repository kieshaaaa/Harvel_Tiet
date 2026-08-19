#include <stdio.h>

int main() {
    int arr[100];
    int size, i, j, count;

    printf("Enter size of array: ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }

    printf("\nFrequency of all elements of array:\n");
    for(i = 0; i < size; i++) {
        count = 1;
        if(arr[i] != -1) { // Check if element has not been counted already
            for(j = i + 1; j < size; j++) {
                if(arr[i] == arr[j]) {
                    count++;
                    arr[j] = -1; // Mark duplicate elements as counted
                }
            }
            printf("%d occurs %d times\n", arr[i], count);
        }
    }

    return 0;
}