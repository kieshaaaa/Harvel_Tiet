#include <stdio.h>

int main() {
    int A[20], N, Temp, i, j, flag;
    printf("\nENTER THE NUMBER OF TERMS...: ");
    scanf("%d", &N);
    printf("\nENTER THE ELEMENTS OF THE ARRAY...: \n");

    for (i = 0; i < N; i++) {
        printf("\nENTER THE ELEMENT [ %d ]...: ", i + 1);
        scanf("%d", &A[i]);
    }

    for (i = 0; i < N - 1; i++) {
        flag = 0;
        for (j = i + 1; j < N; j++) {
            if (A[j] < A[i]) {
                Temp = A[i];
                A[i] = A[j];
                A[j] = Temp;
                flag = 1;
            }
        }
        if (!flag) break;
    }

    printf("\nTHE SORTED LIST IS...: \n\n");
    for (i = 0; i < N; i++) {
        printf(" %d ", A[i]);
    }
    printf("\n");

    return 0;
}