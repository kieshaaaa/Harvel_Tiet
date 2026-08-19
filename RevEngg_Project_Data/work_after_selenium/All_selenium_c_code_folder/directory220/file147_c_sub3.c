#include<stdio.h>

int main() {
    int n;
    printf("Enter value of N :: ");
    scanf("%d", &n);

    // Assuming the sequence does not go beyond 100 elements for simplicity
    int fib[100];
    fib[0] = 0;
    fib[1] = 1;

    printf("\nFibonacci Series upto [ %d ] Numbers are :: \n\n", n);

    for (int i = 2; i < n; i++) {
        fib[i] = fib[i - 1] + fib[i - 2];
    }

    for (int i = 0; i < n; i++) {
        printf("%d   ", fib[i]);
    }
    printf("\n");
    return 0;
}