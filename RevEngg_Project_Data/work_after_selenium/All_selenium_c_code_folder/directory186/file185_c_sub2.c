#include<stdio.h>

int main() {
    int nums[10];
    int greatest = 0; // Assuming all numbers will be positive.
    int idx = 0;
    int temp;

    printf("\nEnter 10 numbers below :: \n");
    while(idx < 10) {
        printf("\nEnter number %d :: ", idx+1);
        scanf("%d", &temp);
        if(idx == 0 || temp > greatest) {
            greatest = temp;
        }
        idx++;
    }

    printf("\nThe largest number among 10 Numbers is :: [ %d ]\n", greatest);

    return 0;
}