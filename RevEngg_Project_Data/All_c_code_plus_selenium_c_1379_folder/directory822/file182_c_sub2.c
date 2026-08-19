#include <stdio.h>

int main() {
    int year;
    printf("\nEnter Any Year to Check Whether It is a Leap Year or Not => ");
    scanf("%d", &year);

    int condition = !(year % 4) && (year % 100 || !(year % 400));

    switch (condition) {
        case 0:
            printf("\n%d is Not A Leap Year", year);
            break;
        default: // This will effectively act as case 1.
            printf("\n%d is a Leap Year", year);
            break;
    }

    printf("\n");

    return 0;
}