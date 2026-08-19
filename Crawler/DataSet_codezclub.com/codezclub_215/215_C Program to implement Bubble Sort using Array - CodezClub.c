/* Source: https://www.codezclub.com/c-bubble-sort-using-array/ */
/*  C Program to implement Bubble Sort using Array  */

#include<stdio.h>

int main()
{
int n,i,j,temp;
printf("Enter the size of Array : ");
scanf("%d",&n);
int a[n];
printf("Enter elements : \n");
for(i=0;i<n;i++)
{
printf("Enter %d element : ",i+1);
scanf("%d",&a[i]);
}

for(i=1;i<n;++i)
{
    for(j=0;j<(n-i);++j)
            if(a[j]>a[j+1])
            {
                temp=a[j];
                a[j]=a[j+1];
                a[j+1]=temp;
            }
}

printf("\nArray after c bubble sort: ");

for(i=0;i<n;i++)
{
printf(" %d ",a[i]);
}
return 0;
}