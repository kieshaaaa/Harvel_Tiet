#include <stdio.h>

int main() {
    int N;
    float sum = 0.0;
    printf("\nEnter total number of terms :: ");
    scanf("%d", &N);

    for(int num = 1; num <= N; ++num) {
        int odd = 2 * num - 1;
        sum += 1.0 / odd;
    }

    printf("\nSum of the series is :: %f\n", sum);

    return 0;
}