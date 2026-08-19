#include <stdio.h>

int main() {
    int m, n;

    printf("Enter the first number: ");
    scanf("%d", &m);
    printf("Enter the second number: ");
    scanf("%d", &n);

    printf("Before swapping: m = %d, n = %d\n", m, n);

    // Swapping
    m = m ^ n;
    n = m ^ n;
    m = m ^ n;

    printf("After swapping: m = %d, n = %d\n", m, n);

    return 0;
}