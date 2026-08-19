#include <stdio.h>

int main() {
    int year;
    printf("\nEnter an year to check whether it is a leap year or not => ");
    scanf("%d", &year);

    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
        printf("\n%d is a Leap Year", year);
    } else {
        printf("\n%d is not a Leap Year", year);
    }

    return 0;
}