#include <stdio.h>

int main() {
    int arr[100], checked[100];
    int size, i, j, count;

    printf("Enter size of array: ");
    scanf("%d", &size);

    for(i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
        checked[i] = 0; // Initialize as unchecked
    }

    printf("\nFrequency of all elements of array:\n");
    for(i = 0; i < size; i++) {
        if(checked[i] == 1) continue; // Skip if already counted

        count = 1;
        for(j = i + 1; j < size; j++) {
            if(arr[i] == arr[j]) {
                count++;
                checked[j] = 1; // Mark as counted
            }
        }
        printf("%d occurs %d times\n", arr[i], count);
    }

    return 0;
}