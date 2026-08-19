/* Source: https://www.codezclub.com/c-program-to-search-element-using-linear-search/ */
/* C Program to search an element in an array using linear search  */

#include<stdio.h>

int main(){
        int a[10],i,n,m,c=0;
        printf("Enter the size of an array :: ");
        scanf("%d",&n);
        printf("\nEnter the elements of the array :: \n");
        for(i=0;i<=n-1;i++)
    {
        printf("\nEnter %d element of an array :: ",i+1);
        scanf("%d",&a[i]);
    }

        printf("\nEnter the number to be search :: ");
        scanf("%d",&m);
        for(i=0;i<=n-1;i++){
                if(a[i]==m){
                        c=1;
                        break;
                }
        }
        if(c==0)
                printf("\nThe number is not in the list");
        else
                printf("\nThe number is found in the array ");
        return 0;
}