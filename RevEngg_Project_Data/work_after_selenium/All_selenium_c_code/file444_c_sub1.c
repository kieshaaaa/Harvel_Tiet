#include<stdio.h>

int main() {
    int N;
    float sum = 0.0; // Initialize sum here

    printf("\nEnter the value of N :: ");
    scanf("%d", &N);

    for(int i = 1; i <= N; ++i) {
        sum += 1.0 / i; // Simplified expression
    }

    printf("\nSum of the series is :: %f\n", sum);

    return 0;
}