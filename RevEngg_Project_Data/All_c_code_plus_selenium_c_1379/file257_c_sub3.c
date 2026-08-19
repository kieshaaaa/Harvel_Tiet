#include <stdio.h>

int main() {
    int year;
    printf("\nEnter an year to check whether it is a leap year or not => ");
    scanf("%d", &year);

    int leap = (year % 400 == 0) ? 1 : ((year % 100 == 0) ? 0 : ((year % 4 == 0) ? 1 : 0));

    if (leap) {
        printf("\n%d is a Leap Year", year);
    } else {
        printf("\n%d is not a Leap Year", year);
    }

    return 0;
}