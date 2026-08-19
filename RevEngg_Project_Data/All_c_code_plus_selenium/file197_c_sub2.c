#include<stdio.h>

int main() {
    int vals[50], size, m, n, swapped;
    printf("Enter number of elements: ");
    scanf("%d", &size);
    
    m = 0;
    while(m < size) {
        printf("Enter integer number %d: ", m + 1);
        scanf("%d", &vals[m]);
        m++;
    }

    for (m = 0; m < size; m++) {
        for (n = 0; n < size - m - 1; n++) {
            if (vals[n] < vals[n + 1]) {
                swapped = vals[n];
                vals[n] = vals[n + 1];
                vals[n + 1] = swapped;
            }
        }
    }

    printf("Sorted list in descending order:");
    for (m = 0; m < size; m++)
        printf(" %d", vals[m]);
    printf("\n");
    return 0;
}