#include <stdio.h>

int main() {
    int N, i;
    float sum = 0.0;

    printf("\nEnter total number of terms :: ");
    scanf("%d", &N);

    for(i = 1; i <= N; i++) {
        float odd = 2 * i - 1;
        sum += odd / (odd * odd);
    }

    printf("\nSum of the series is :: %f\n", sum);

    return 0;
}