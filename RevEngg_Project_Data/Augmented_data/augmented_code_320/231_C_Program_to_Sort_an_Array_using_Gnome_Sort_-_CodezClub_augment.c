/* Source: https://www.codezclub.com/c-program-sort-array-using-gnome-sort/ */
/*  C Program to Sort an Array using GnomeSort  */

#include <stdio.h>
 
void main()
{
    int j, temp, arr[10], num;
 
    printf("\nenter the elemts number u would like to enter:");
    scanf("%d", &num);
    printf("\nenter the elements to be sorted through gnome sort:\n");
    for (j = 0; j < num; j++)
        scanf("%d", &arr[j]);
    j = 0;
    int idx = 0;
    while(idx < num){
        if (idx == 0 || arr[idx - 1] <= arr[idx])
            idx++;
        else
        {
            temp = arr[idx-1];
            arr[idx - 1] = arr[idx];
            arr[idx] = temp;
            idx = idx - 1;
        }
    }
    for (j = 0;j < num;j++)
        printf("%d\t", arr[j]);
}