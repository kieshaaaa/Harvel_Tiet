#include <stdio.h>

int main() {
    int year, isLeapYear = 0;
    printf("\nEnter an year to check whether it is a leap year or not => ");
    scanf("%d", &year);

    if (year % 400 == 0) {
        isLeapYear = 1;
    } else if (year % 100 == 0) {
        isLeapYear = 0;
    } else if (year % 4 == 0) {
        isLeapYear = 1;
    }

    if (isLeapYear) {
        printf("\n%d is a Leap Year", year);
    } else {
        printf("\n%d is not a Leap Year", year);
    }

    return 0;
}