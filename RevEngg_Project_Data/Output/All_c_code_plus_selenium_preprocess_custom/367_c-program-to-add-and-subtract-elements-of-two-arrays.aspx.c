#include<stdio.h>

void readArray(int a[],int size)
{
 int i;
 for(i=0;i< size;i++)
 {
;
 }
}
void printArray(int a[],int size)
{
 int i;
 for(i=0;i < size; i++)
;
}
void addArray(int a[],int b[],int c[],int size)
{
 int i;
 for(i=0; i< size;i++)
 c[i]=a[i]+b[i];
}
void subArray(int a[],int b[],int c[],int size)
{
 int i;
 for(i=0; i< size;i++)
 c[i]=a[i]-b[i];
}
int entry_point(int (*n))
{
 int A[20],B[20],ADD[20],SUB[20];
int i;
;
;
 readArray(A,(*n));
;
 readArray(B,(*n));
 addArray(A,B,ADD,(*n));
 subArray(A,B,SUB,(*n));
;
 printArray(ADD,(*n));
;
 printArray(SUB,(*n));
;
 return 0;
}
