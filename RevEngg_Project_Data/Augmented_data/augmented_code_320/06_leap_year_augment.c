// Program to check whether a year is a leap year or not. Using switch Statement

// Header Files
#include <stdio.h>


// Main Function Start
int main()
{

    int yr;
    printf("\nEnter Any Year to Check Whether It is Leap Year or Not => ");
    scanf("%d", &yr);

    int isLeap = (yr % 400 == 0) || (yr % 100 && yr % 4 == 0);
    switch (isLeap)
    {
    case 0:
        printf("\n%d is Not A Leap Year", yr);
        break;
    case 1:
        printf("\n%d is Leap Year", yr);
        break;
    }

    printf("\n");

    return 0;
}
// Main Function End