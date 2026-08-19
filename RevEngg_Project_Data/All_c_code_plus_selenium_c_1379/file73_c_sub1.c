#include <stdio.h>

int main() {
    float a[100], x, sum = 0;
    int n, i;

    printf("Enter degree of the polynomial X: ");
    scanf("%d", &n);

    for (i = 0; i <= n; i++) {
        printf("Enter coefficient of [X^%d]: ", n - i);
        scanf("%f", &a[i]);
    }

    printf("Enter the value of X: ");
    scanf("%f", &x);

    for (i = 0; i < n; i++) {
        sum = (sum + a[i]) * x;
    }
    sum += a[n];

    printf("Value of the polynomial is: %f\n", sum);

    return 0;
}