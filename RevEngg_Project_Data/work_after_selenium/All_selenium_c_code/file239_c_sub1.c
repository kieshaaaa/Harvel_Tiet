#include <stdio.h>

#define MAX_SIZE 100

int main() {
    int arr[MAX_SIZE];
    int i, N;
    int countEven = 0, countOdd = 0;
    
    printf("Enter size of the array: ");
    scanf("%d", &N);

    for(i = 0; i < N; i++) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
        (arr[i] % 2 == 0) ? countEven++ : countOdd++;
    }
    
    printf("Total even elements: %d\n", countEven);
    printf("Total odd elements: %d\n", countOdd);

    return 0;
}