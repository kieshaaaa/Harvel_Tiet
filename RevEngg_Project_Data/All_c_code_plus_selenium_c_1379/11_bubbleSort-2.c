//Write a C program to implement a bubble sort. 

#include<stdio.h>
int main()
{
    int array[100];
     int  swap, n, i, j,k;
    
    printf("Enter number of Elements: ");
    scanf("%d", &n);
    
    printf("Enter %d integers: ", n);
    
    
    for(i=0;i<n-1;i++)
    {
        for(j=0;j<n-i-1;j++)
        {
            if(array[j]>array[j+1])
            {
                swap = array[j];
                array[j] = array[j+1];
                array[j+1] = swap;
            }
        }
    }
    
    printf("Sorted list in ascending order: \n");
    for(k=0;k<n;k++)
        printf("%d\n", array[k]);
    return 0;
}
