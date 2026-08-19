/* Source: https://www.codezclub.com/c-find-biggest-and-smallest-of-three-numbers/ */
/*  C program to find largest and smallest of three numbers  */

#include<stdio.h>
int main()
{
    int n1, n2, n3;
    printf("ENTER FIRST NUMBER A :: ");
    scanf("%d", &n1);
    printf("\nENTER SECOND NUMBER B :: ");
    scanf("%d",&n2);
    printf("\nENTER THIRD NUMBER C :: ");
    scanf("%d",&n3);

    printf("\nTHE BIGGEST NUMBER IS :: ");
    if( (n1 > n2) && (n1 > n3) )
    printf("%d", n1);
    else if(n2 > n3)
    printf("%d", n2);
    else
    printf("%d", n3);
    printf("\n\nTHE SMALlEST NUMBER IS :: ");
    if( (n1 < n2) && (n1 < n3) )
    printf("%d", n1);
    else if(n2 < n3)
    printf("%d", n2);
    else
    printf("%d",n3);

    return 0;
}