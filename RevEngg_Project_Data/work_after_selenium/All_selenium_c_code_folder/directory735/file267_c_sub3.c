#include<stdio.h>
#define MAX 20

int main() {
    int A[MAX], B[MAX], ADD[MAX], SUB[MAX];
    int i, n;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    // Simplified input loop for both arrays
    for(i = 0; i < n; i++) {
        printf("Enter element %d of Array 1 :", i+1);
        scanf("%d", &A[i]);
        printf("Enter element %d of Array 2 :", i+1);
        scanf("%d", &B[i]);

        // Direct calculation during input
        ADD[i] = A[i] + B[i];
        SUB[i] = A[i] - B[i];
    }

    // Print results
    printf("\nArray elements after adding :\n");
    for(i = 0; i < n; i++) {
        printf("%5d", ADD[i]);
    }

    printf("\nArray elements after subtracting :\n");
    for(i = 0; i < n; i++) {
        printf("%5d", SUB[i]);
    }

    printf("\n\n");
    return 0;
}