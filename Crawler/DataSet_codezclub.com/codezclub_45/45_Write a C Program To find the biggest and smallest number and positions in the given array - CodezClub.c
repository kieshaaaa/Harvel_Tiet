/* Source: https://www.codezclub.com/c-to-find-biggest-smallest-positions-in-array/ */
/*  C Program To find biggest and smallest number and positions in array  */

#include<stdio.h>

int main()
{

    int A[25], max, min, maxpos, minpos, n, i;

    printf("ENTER THE SIZE OF THE ARRAY :: ");
    scanf("%d", &n);
    printf("\nENTER %d ELEMENTS OF THE ARRAY :: \n",n);
    for(i=1; i<=n; i++)
    {
     printf("\nENTER %d ELEMENT OF THE ARRAY :: ",i);
     scanf("%d", &A[i]);
    }
    max = A[1];
    maxpos = 1;
    for(i=1; i<=n; i++)
    {
    if(max<A[i])
    {
    max = A[i];
    maxpos = i;
    }
    }
    min = A[1];
    minpos = 1;
    for(i=1; i<=n; i++)
    {
    if(min>A[i])
    {
    min = A[i];
    minpos = i;
    }
    }
    printf("\nTHE LARGEST ELEMENT IS :: %d ", max);
    printf(" AND ITS POSITION IS : %d \n", maxpos);
    printf("\nTHE SMALlEST ELEMENT IS :: %d ", min);
    printf(" AND ITS POSITION IS :: %d \n", minpos);
    return 0;
}