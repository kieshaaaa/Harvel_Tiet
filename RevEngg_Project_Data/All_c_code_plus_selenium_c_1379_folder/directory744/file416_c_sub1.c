#include <stdio.h>

int main() {
    int N, i;
    float sum = 0.0, term;

    printf("\nEnter total number of terms :: ");
    scanf("%d", &N);

    for(i = 1; i <= 2 * N; i += 2) {
        term = i / (float)(i * i);
        sum += term;
    }

    printf("\nSum of the series is :: %f\n", sum);

    return 0;
}