/* Source: https://www.codezclub.com/c-program-sort-array-using-lsdradix-sort/ */
/*  C Program to Sort Array using LSD Radix Sort  */

#include <stdio.h>
 
int minVal = 0, numCount = 0, dataArray[100] = {0}, sortedArray[100] = {0};
 
void main()
{
    int k, i, j, temp, t, n;
 
    printf("Enter size of array :");
    scanf("%d", &numCount);
    printf("Enter elements into array :");
    i = 0;
    while (i < numCount)
    {
        scanf("%d", &dataArray[i]);
        sortedArray[i] = dataArray[i];
        i++;
    }
    k = 0;
    while (k < 3)
    {    
        i = 0;
        while (i < numCount)
        {
            minVal = dataArray[i] % 10;        /* To find minimum lsd */
            t = i;
            j = i + 1;
            while (j < numCount)    
            {
                if (minVal > (dataArray[j] % 10))
                {
                    minVal = dataArray[j] % 10; 
                    t = j;
                }
                j++;
            }
            temp = sortedArray[t];
            sortedArray[t] = sortedArray[i];
            sortedArray[i] = temp;
            temp = dataArray[t];
            dataArray[t] = dataArray[i];
            dataArray[i] = temp;
 
            i++;
        }
        j = 0;
        while (j < numCount)        /*to find MSB */
        {
            dataArray[j] = dataArray[j] / 10;
            j++;
        }
        k++;
    }
    printf("Sorted Array (lSd radix sort) : ");
    i = 0;
    while (i < numCount)
    {
        printf("%d ", sortedArray[i]);
        i++;
    }
}