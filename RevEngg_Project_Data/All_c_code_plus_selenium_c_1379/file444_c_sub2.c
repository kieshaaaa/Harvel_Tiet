#include<stdio.h>

int main() {
    int N, i = 1;
    float sum = 0.0;

    printf("\nEnter the value of N :: ");
    scanf("%d", &N);

    while(i <= N) {
        sum += 1.0 / i;
        i++;
    }

    printf("\nSum of the series is :: %f\n", sum);

    return 0;
}