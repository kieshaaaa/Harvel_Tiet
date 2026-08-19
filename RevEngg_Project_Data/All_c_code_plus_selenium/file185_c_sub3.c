#include<stdio.h>

int main() {
    int values[10];
    int max = 0; // Assuming all numbers will be positive.
    int count = 0;
    int number;

    printf("\nEnter 10 numbers below :: \n");
    do {
        printf("\nEnter number %d :: ", count+1);
        scanf("%d", &number);
        if(count == 0 || number > max) {
            max = number;
        }
        count++;
    } while(count < 10);

    printf("\nThe largest number among 10 Numbers is :: [ %d ]\n", max);

    return 0;
}