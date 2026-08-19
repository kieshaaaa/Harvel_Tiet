#include<stdio.h>

int main() {
    int N, i = 1;
    float sum = 0.0;

    printf("\nEnter the value of N :: ");
    scanf("%d", &N);

    do {
        sum += 1.0 / i;
        i++;
    } while(i <= N);

    printf("\nSum of the series is :: %f\n", sum);

    return 0;
}