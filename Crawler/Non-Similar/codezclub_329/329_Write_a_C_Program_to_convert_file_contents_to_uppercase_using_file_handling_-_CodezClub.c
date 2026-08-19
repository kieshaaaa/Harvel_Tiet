/* Source: https://www.codezclub.com/c-convert-file-upper-case-using-file-handling/ */
/*  C Program to convert file contents to uppercase using file handling  */

#include<stdio.h>
int main()
{
 int c;
 FILE *fr,*fw;

 if((fr=fopen("C:\\Users\\acer\\Documents\\file4.txt","r"))==NULL)
 {
  printf("File can't be open.");
  return 1;
 }
 if((fw=fopen("C:\\Users\\acer\\Documents\\file5.txt","r+"))==NULL)
 {
  printf("File can't be open.");
  fclose(fr);
  return 1;
 }
 while(1)
 {
  c=fgetc(fr);
  if(feof(fr))
    break;
  c=~c;
  fputc(c,fw);
 }
 printf("\nFile4.txt successfully converted to Uppercase.!!!\n");

 fclose(fr);
 fclose(fw);
 return 0;
}