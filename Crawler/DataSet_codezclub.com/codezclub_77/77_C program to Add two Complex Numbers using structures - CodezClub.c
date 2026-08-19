/* Source: https://www.codezclub.com/c-add-two-complex-numbers/ */
/* C program to Add two Complex Numbers using structures  */

#include <stdio.h>

struct complex
{
   int real, img;
};

int main()
{
   struct complex a, b, c;

   printf("\nEnter first complex number :: \n");
   printf("\nEnter Real Part :: ");
   scanf("%d", &a.real);
   printf("\nEnter Imaginary Part :: ");
   scanf("%d", &a.img);

   printf("\nEnter Second complex number :: \n");
   printf("\nEnter Real Part :: ");
   scanf("%d", &b.real);
   printf("\nEnter Imaginary Part :: ");
   scanf("%d", &b.img);

   c.real = a.real + b.real;
   c.img = a.img + b.img;

   if ( c.img >= 0 )
      printf("\nSum of two complex numbers = %d + %di\n", c.real, c.img);
   else
      printf("\nSum of two complex numbers = %d %di\n", c.real, c.img);

   return 0;
}