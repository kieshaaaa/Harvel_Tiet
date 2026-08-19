// C program to check whether a given year is a leap year or not

// Header Files
#include <stdio.h>


// Main Function Start
int main()
{
    int yr;
    int leap_check;
    printf("\nEnter An Year to Check Whether It is Leap Year or Not => ");
    scanf("%d", &yr);

    // using if-else-if ladder
    if (yr % 400 == 0)
    {
        leap_check = 1;
        printf("\n%d is a Leap Year", yr);
    }
    else if (yr % 100 == 0)
    {
        leap_check = 2;
        printf("\n%d is not a Leap Year", yr);
    }
    else if (yr % 4 == 0)
    {
        leap_check = 3;
        printf("\n%d is a Leap Year", yr);
    }
    else
    {
       leap_check = 4;
       printf("\n%d is not a Leap Year", yr);
    }
    // using nested if-else
    // if (year % 4 == 0)
    // {
    //    if (year % 100 != 0)
    //        printf("\n%d is a Leap Year", year);
    //    else if (year % 400 == 0)
    //        printf("\n%d is a Leap Year", year);
    //    else
    //        printf("\n%d is not a Leap Year", year);
    // }
    // else
    // {
    //    printf("\n%d is not a Leap Year", year);
    // }


    return 0;
}
// Main Function End