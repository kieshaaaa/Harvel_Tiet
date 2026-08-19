#include<stdio.h>

int main() {
    int N;
    unsigned long sum = 0;
    int i = 1;
    int nextSquare = 1; // Start with 1^2

    printf("\nEnter the value of N :: ");
    scanf("%d", &N);

    while(i <= N) {
        sum += nextSquare;
        nextSquare += (2 * i + 1); // Calculate the next square
        i++;
    }

    printf("\nSum of the series is :: [ %lu ]\n", sum);

    return 0;
}