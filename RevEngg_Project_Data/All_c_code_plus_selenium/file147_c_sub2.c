#include<stdio.h>

int main() {
    int n, first = 0, second = 1, next, count = 0;
    printf("Enter value of N :: ");
    scanf("%d", &n);

    printf("\nFibonacci Series upto [ %d ] Numbers are :: \n\n", n);

    while (count < n) {
        if (count <= 1) {
            next = count;
        } else {
            next = first + second;
            first = second;
            second = next;
        }
        printf("%d   ", next);
        count++;
    }
    printf("\n");
    return 0;
}