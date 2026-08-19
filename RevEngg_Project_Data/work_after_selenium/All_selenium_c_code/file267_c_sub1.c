#include<stdio.h>
#define MAX 20

int main() {
    int A[MAX], B[MAX], ADD[MAX], SUB[MAX];
    int i, n;

    printf("\nEnter size of an Array :");
    scanf("%d", &n);

    // Read elements for Array A
    for(i = 0; i < n; i++) {
        printf("Enter element %d of Array 1 :", i+1);
        scanf("%d", &A[i]);
    }

    // Read elements for Array B
    for(i = 0; i < n; i++) {
        printf("Enter element %d of Array 2 :", i+1);
        scanf("%d", &B[i]);
    }

    // Add and Subtract Arrays
    for(i = 0; i < n; i++) {
        ADD[i] = A[i] + B[i];
        SUB[i] = A[i] - B[i];
    }

    // Print ADD array
    printf("\nArray elements after adding :\n");
    for(i = 0; i < n; i++) {
        printf("%5d", ADD[i]);
    }

    // Print SUB array
    printf("\nArray elements after subtracting :\n");
    for(i = 0; i < n; i++) {
        printf("%5d", SUB[i]);
    }

    printf("\n\n");
    return 0;
}