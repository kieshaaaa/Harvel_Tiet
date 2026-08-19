/* Source: https://www.codezclub.com/c-print-pyramid-of-multiplication-tables/ */
/* C Program to Print Pyramid of Multiplication Tables using For Loop  */

#include<stdio.h>
int main() {
 int i, j;

 for (i = 1; i <= 10; i++) {
 for (j = 1; j <= i; j++) {
 printf("%d  ", i * j);
 }
 printf("\n");
 }
 return(0);
}