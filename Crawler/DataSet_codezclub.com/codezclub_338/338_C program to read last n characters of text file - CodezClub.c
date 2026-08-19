/* Source: https://www.codezclub.com/c-read-last-n-chatacters-file/ */
/*  C program to read last n characters of text file  */

/* -----------------file4.txt contains text-------------

  Perpetual sincerity out suspected necessary
  one but provision satisfied. Respect nothing
  use set waiting pursuit nay you looking.
  If on prevailed concluded ye abilities.
  Address say you new but minuter greater.
  Do denied agreed in innate. Can and
  middletons thoroughly themselves him.
  Tolerably sportsmen belonging in september
  no am immediate newspaper. Theirs expect
  dinner it pretty indeed having no of.
  Principle september she conveying did
  eat may extensive.

--------------------------------------------------------- */

#include<stdio.h>
#include<stdlib.h>

int main() {

   FILE *fp;
   char ch;
   int num;
   long length;

   printf("Enter the value of n : ");
   scanf("%d", &num);

   fp = fopen("C:\\Users\\acer\\Documents\\file4.txt", "r");
   if (fp == NULL) {
      puts("\ncannot open this file");
      exit(1);
   }

   fseek(fp, 0, SEEK_END);
   length = ftell(fp);
   fseek(fp, (length - num), SEEK_SET);

   do {
      ch = fgetc(fp);
      putchar(ch);
   } while (ch != EOF);

   fclose(fp);
   return(0);
}