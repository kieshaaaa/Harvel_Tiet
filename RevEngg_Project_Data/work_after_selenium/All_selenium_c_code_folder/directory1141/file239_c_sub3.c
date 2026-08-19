#include <stdio.h>

#define MAX_SIZE 100

int main() {
    int arr[MAX_SIZE], N;
    int even = 0, odd = 0, i = 0;

    printf("Enter size of the array: ");
    scanf("%d", &N);

    while(i < N) {
        printf("Enter element %d: ", i+1);
        scanf("%d", &arr[i]);
        arr[i] % 2 ? odd++ : even++;
        i++;
    }

    printf("Total even elements: %d\n", even);
    printf("Total odd elements: %d\n", odd);

    return 0;
}