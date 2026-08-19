#include <stdio.h>

#define MAX_SIZE 100
#define IS_EVEN(num) ((num) % 2 == 0 ? 1 : 0)

int main() {
    int arr[MAX_SIZE];
    int i, N;
    int evenCount = 0, oddCount = 0;

    printf("Enter size of the array: ");
    scanf("%d", &N);

    for(i = 0; i < N; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
        if(IS_EVEN(arr[i])) {
            evenCount++;
        } else {
            oddCount++;
        }
    }

    printf("Total even elements: %d\n", evenCount);
    printf("Total odd elements: %d\n", oddCount);

    return 0;
}