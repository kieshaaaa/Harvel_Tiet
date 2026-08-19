#include<stdio.h>

int main() {
    int array[100], n, i, j, temp, flag;
    printf("Enter number of Elements: ");
    scanf("%d", &n);

    printf("Enter %d integers: ", n);
    for(i = 0; i < n; i++)
        scanf("%d", &array[i]);

    for(i = 0; i < n-1; i++) {
        flag = 0;
        for(j = 0; j < n-i-1; j++) {
            if(array[j] > array[j+1]) {
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
                flag = 1;
            }
        }
        if(flag == 0) break; // If no numbers were swapped, the array is sorted
    }

    printf("Sorted list in ascending order: \n");
    for(i = 0; i < n; i++)
        printf("%d\n", array[i]);

    return 0;
}