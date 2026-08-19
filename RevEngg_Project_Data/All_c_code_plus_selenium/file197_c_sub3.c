#include<stdio.h>

int main() {
    int elements[50], total, x, y, exchange;
    printf("Enter number of elements: ");
    scanf("%d", &total);
    
    for(x = 0; x < total; x++) {
        printf("Enter integer number %d: ", x + 1);
        scanf("%d", &elements[x]);
    }

    for (x = 0; x < total - 1; x++) {
        for (y = 0; y < total - x - 1; y++) {
            if (elements[y] < elements[y + 1]) {
                exchange = elements[y];
                elements[y] = elements[y + 1];
                elements[y + 1] = exchange;
            }
        }
    }

    printf("Sorted list in descending order:");
    for (x = 0; x < total; x++)
        printf(" %d", elements[x]);
    printf("\n");
    return 0;
}