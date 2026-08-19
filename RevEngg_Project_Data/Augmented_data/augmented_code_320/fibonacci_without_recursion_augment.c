#include <stdio.h>

int main() {
    int limit;
    int a = 0;
    int b = 1;
    int c, i = 0;

    printf("Enter the limit for the Fibonacci series: ");
    scanf("%d", &limit);

    printf("Fibonacci Series:\n");

    while (i < limit) {
        if (i <= 1) {
            c = i; 
        } else {
            c = a + b;
            a = b;
            b = c;
        }
        printf("%d ", c);
        i++;
    }

    printf("\n");
    return 0;
}