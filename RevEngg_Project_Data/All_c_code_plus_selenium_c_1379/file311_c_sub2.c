#include<stdio.h>

int main() {
    int i = 1, N;
    unsigned long sum = 0;

    printf("\nEnter the value of N :: ");
    scanf("%d", &N);

    while(i <= N) {
        sum += i * i;
        i++;
    }

    printf("\nSum of the series is :: [ %lu ]\n", sum);

    return 0;
}