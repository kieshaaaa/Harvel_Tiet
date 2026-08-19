#include<stdio.h>

int main() {
    int num[10], low;
    printf("Enter 10 numbers below: \n");
    for(int i = 0; i < 10; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%d", &num[i]);
    }

    low = num[0];

    for(int i = 1; i < 10; i++) {
        if(num[i] < low) {
            low = num[i];
        }
    }

    printf("The Smallest Number among 10 Numbers is: [ %d ]\n", low);

    return 0;
}