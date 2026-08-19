/* Source: https://www.codezclub.com/c-program-sort-numbers-using-selection-sort/ */
/*  C Program to Sort Numbers using Selection sort  */

#include <stdio.h>

int main()
{
        int A[20], N, Temp, i, j;
        printf("\nENTER THE NUMBER OF TERMS...: ");
        scanf("%d",&N);
        printf("\nENTER THE ELEMENTS OF THE ARRAY...: \n");
        for(i=1; i<=N; i++)
        {
            printf("\nENTER THE ELEMENT [ %d ]...: ",i);
            scanf("%d", &A[i]);
        }
        for(i=1; i<=N-1; i++)
                for(j=i+1; j<=N;j++)
                        if(A[i]>A[j])
                        {
                                Temp = A[i];
                                A[i] = A[j];
                                A[j] = Temp;
                        }

        printf("\nTHE SORTED LIST IS...: \n\n");
        for(i=1; i<=N; i++)
                printf(" %d ",A[i]);

        printf("\n");

        return 0;
}