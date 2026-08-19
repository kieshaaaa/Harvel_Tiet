#include<stdio.h>
int main()
{
    int i, n, search, flag = 0;
    printf("Enter the size of an array: ");
    scanf("%d", &n);
    
    int array[n];
    
    printf("Enter the values for the array:");
    for(i=0; i<n; i++)
    {
        scanf("%d", &array[i]);
    }
    
    printf("Enter the element to be searched:");
    scanf("%d", &search);
    
    for(i=0; i<n; i++)
    {
        if(search == array[i])
        {
            printf("Element found at index: %d", i);
            flag = 1;
            break;
        }
    }
    if(flag == 0)
    {
        printf("Element not found");
    }
    return 0;
}