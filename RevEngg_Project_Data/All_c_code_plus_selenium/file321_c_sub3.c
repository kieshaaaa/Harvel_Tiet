#include<stdio.h>

int main() {
    int elements[10], total, searchNum;

    printf("Total elements: ");
    scanf("%d", &total);

    for (int i = 0; i < total; i++) {
        printf("Value [%d]: ", i);
        scanf("%d", &elements[i]);
    }

    printf("Search for number: ");
    scanf("%d", &searchNum);

    int found = 0;
    for (int i = 0; i < total && !found; i++) {
        if (elements[i] == searchNum) {
            printf("Number found at index %d.\n", i);
            found = 1;
        }
    }

    if (!found) {
        printf("Number not found.\n");
    }

    return 0;
}