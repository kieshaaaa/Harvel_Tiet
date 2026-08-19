#include <stdio.h>

int main() {
    int n;
    int t1 = 0;
    int t2 = 1;
    int next;
    int i = 1;
    printf("Enter the number of terms: ");
    scanf("%d", &n);

    printf("Fibonacci Series (do-while loop): ");
    do {
        printf("%d ", t1);
        next = t1 + t2;
        t1 = t2;
        t2 = next;
        i++;
    } while (i <= n);

    printf("\n");
    return 0;
}
