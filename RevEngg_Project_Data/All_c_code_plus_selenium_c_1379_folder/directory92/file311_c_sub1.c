#include<stdio.h>

int main() {
    int N;
    unsigned long sum;

    printf("\nEnter the value of N :: ");
    scanf("%d", &N);

    sum = (N * (N + 1) * (2 * N + 1)) / 6;

    printf("\nSum of the series is :: [ %lu ]\n", sum);

    return 0;
}