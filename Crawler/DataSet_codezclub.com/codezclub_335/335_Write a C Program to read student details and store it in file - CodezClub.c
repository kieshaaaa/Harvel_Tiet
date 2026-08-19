/* Source: https://www.codezclub.com/c-read-student-details-store-file/ */
/*  C Program to read student details and store it in file using File Handling  */

#include<stdio.h>
#include<stdlib.h>
int main()
{
        char name[50];
        int marks,i,n;
        printf("Enter number of students: ");
        scanf("%d",&n);
        FILE *fptr;
        fptr=(fopen("C:\\Users\\acer\\Documents\\student.txt","w"));
        if(fptr==NULL) {
                printf("\nError!");
                exit(1);
        }
        for (i=0;i<n;++i) {
                printf("\nFor student%d\nEnter name: ",i+1);
                scanf("%s",name);
                printf("Enter marks: ");
                scanf("%d",&marks);
                fprintf(fptr,"\nName: %s \nMarks=%d \n",name,marks);
        }
        fclose(fptr);
        return 0;
}