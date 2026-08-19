/* Source: https://www.codezclub.com/c-program-to-search-element-using-linear-search/ */
/* C Program to search an element in an array using linear search  */

#include<stdio.h>

int main(){
        int arr[10],index,size,searchNum,found=0;
        printf("Enter the size of an array :: ");
        scanf("%d",&size);
        printf("\nEnter the elements of the array :: \n");
        index = 0;
        while(index <= size -1){
        printf("\nEnter %d element of an array :: ",index+1);
        scanf("%d",&arr[index]);
        index++;
        }

        printf("\nEnter the number to be search :: ");
        scanf("%d",&searchNum);
        index = 0;
        while(index <= size -1){
                if(arr[index]==searchNum){
                        found=1;
                        break;
                }
                index++;
        }
        if(found==0)
                printf("\nThe number is not in the list");
        else
                printf("\nThe number is found in the array ");
        return 0;
}