// // C program to check whether a given year is a leap year or not

// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{
    int year;
    int result;
    printf("\nEnter An Year to Check Whether It is Leap Year or Not => ");
    scanf("%d", &year);

    // // using if-else-if ladder
    if (year % 400 == 0)
    {
        result = 1;
        printf("\n%d is a Leap Year", year);
    }
    else if (year % 100 == 0)
    {
        result = 2;
        printf("\n%d is not a Leap Year", year);
    }
    else if (year % 4 == 0)
    {
        result = 3;
        printf("\n%d is a Leap Year", year);
    }
    else
    {
       result = 4;
       printf("\n%d is not a Leap Year", year);
    }
    // // using nested if-else
    // // if (year % 4 == 0)
    // // {
    // //    if (year % 100 != 0)
    // //        printf("\n%d is a Leap Year", year);
    // //    else if (year % 400 == 0)
    // //        printf("\n%d is a Leap Year", year);
    // //    else
    // //        printf("\n%d is not a Leap Year", year);
    // // }
    // // else
    // // {
    // //    printf("\n%d is not a Leap Year", year);
    // // }


    return 0;
}
// // Main Function End
