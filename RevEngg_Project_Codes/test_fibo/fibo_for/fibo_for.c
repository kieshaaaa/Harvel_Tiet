#include <stdio.h>

int main() {
    int n;
    int t1 = 0;
    int t2 = 1;
    int next;
    printf("Enter the number of terms: ");
    scanf("%d", &n);

    printf("Fibonacci Series (for loop): ");
    for (int i = 1; i <= n; ++i) {
        printf("%d ", t1);
        next = t1 + t2;
        t1 = t2;
        t2 = next;
    }
    printf("\n");
    return 0;
}
