/* Source: https://www.includehelp.com/c-programs/c-program-to-calculate-sum-and-product-of-array-elements.aspx */
/*Program to calculate Sum, Product of all elements.*/
 
#include <stdio.h>
  
int main() 
{ 
    int numbers[10]; 
    int sum, product, i;
  
    /*Read array elements*/
    printf("\nEnter elements : \n"); 
    i = 0;
    while(i < 10) 
    { 
        printf("Enter numbers[%d] : ",i); 
        scanf("%d",&numbers[i]); 
        i++;
    } 
     
    /*calculate sum and product*/
    sum=0;
    product=1;
    i = 0;
    while(i < 10)
    {
        sum=sum+numbers[i];
        product=product*numbers[i];
        i++;
    }
       
    printf("\nSum of array is     : %d"  ,sum); 
    printf("\nProduct of array is : %d\n",product); 
  
    return 0; 
}