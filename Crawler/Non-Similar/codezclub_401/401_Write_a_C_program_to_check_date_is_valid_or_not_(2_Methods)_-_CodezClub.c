/* Source: https://www.codezclub.com/c-check-date-valid-not/ */
#include <stdio.h>

void main()
{
   int d,m,y;
   int daysinmonth[12]={31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
   int legit = 0;

   printf("Enter the date - DD/MM/YYYY ::  ");
   scanf("%i/%i/%i",&d,&m,&y);

   // leap year checking, if ok add 29 days to february
   if(y % 400 == 0 || (y % 100 != 0 && y % 4 == 0))
    daysinmonth[1]=29;

   // days in month checking
   if (m<13)
   {
      if( d <= daysinmonth[m-1] )
        legit=1;
   }

   if (legit==1)
      printf("It is a valid date!\n");
   else
      printf("It's not valid date!");
}