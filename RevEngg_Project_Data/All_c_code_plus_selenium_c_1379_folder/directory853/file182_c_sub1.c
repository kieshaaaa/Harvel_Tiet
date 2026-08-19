#include <stdio.h>

int main() {
    int year;
    printf("\nEnter Any Year to Check Whether It is a Leap Year or Not => ");
    scanf("%d", &year);

    int leap = (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
    
    switch (leap) {
        case 0:
            printf("\n%d is Not A Leap Year", year);
            break;
        case 1:
            printf("\n%d is a Leap Year", year);
            break;
    }

    printf("\n");

    return 0;
}