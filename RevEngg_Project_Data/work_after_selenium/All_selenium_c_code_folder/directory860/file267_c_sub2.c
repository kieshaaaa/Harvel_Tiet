#include<stdio.h>
#define MAX 20

int main() {
    int A[MAX], B[MAX], ADD[MAX], SUB[MAX];
    int i, n;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    // Separate loops for each operation
    // Read Array A
    for(i = 0; i < n; i++) {
        printf("Enter element %d of Array 1 :", i+1);
        scanf("%d", &A[i]);
    }

    // Read Array B
    for(i = 0; i < n; i++) {
        printf("Enter element %d of Array 2 :", i+1);
        scanf("%d", &B[i]);
    }

    // Perform addition
    for(i = 0; i < n; i++) {
        ADD[i] = A[i] + B[i];
    }

    // Perform subtraction
    for(i = 0; i < n; i++) {
        SUB[i] = A[i] - B[i];
    }

    // Printing results
    // For addition
    printf("\nArray elements after adding :\n");
    for(i = 0; i < n; i++) {
        printf("%5d", ADD[i]);
    }

    // For subtraction
    printf("\nArray elements after subtracting :\n");
    for(i = 0; i < n; i++) {
        printf("%5d", SUB[i]);
    }

    return 0;
}