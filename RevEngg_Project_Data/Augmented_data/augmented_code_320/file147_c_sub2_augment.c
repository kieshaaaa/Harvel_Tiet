#include<stdio.h>

int main() {
    int num_terms, a = 0, b = 1, c, i = 0;
    printf("Enter value of N :: ");
    scanf("%d", &num_terms);

    printf("\nFibonacci Series upto [ %d ] Numbers are :: \n\n", num_terms);

    for(i = 0; i < num_terms; i++){
        if (i <= 1) {
            c = i;
        } else {
            c = a + b;
            a = b;
            b = c;
        }
        printf("%d   ", c);
    }
    printf("\n");
    return 0;
}