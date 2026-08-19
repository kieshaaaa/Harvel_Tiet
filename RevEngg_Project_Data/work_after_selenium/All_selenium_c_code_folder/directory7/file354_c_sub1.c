#include <stdio.h>

int main() {
    int arr[100], freq[100], flag[100];
    int size, i, j;

    printf("Enter size of array: ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
        freq[i] = 1; // Initialize frequency to 1
        flag[i] = 0; // Initialize all elements of flag to 0
    }

    for(i = 0; i < size; i++) {
        for(j = i + 1; j < size; j++) {
            if(arr[i] == arr[j]) {
                freq[i]++;
                flag[j] = 1; // Mark duplicate elements
            }
        }
    }

    printf("\nFrequency of all elements of array:\n");
    for(i = 0; i < size; i++) {
        if(flag[i] == 0) {
            printf("%d occurs %d times\n", arr[i], freq[i]);
        }
    }

    return 0;
}