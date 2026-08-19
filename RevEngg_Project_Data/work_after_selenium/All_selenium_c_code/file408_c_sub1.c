#include <stdio.h>

int main() {
    int day, month, year, wDayNo;
    char *dayNames[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
    int monthLengths[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    printf("Input date (DD-MM-YYYY): ");
    scanf("%d-%d-%d", &day, &month, &year);

    // Adjust February for leap years
    if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0))
        monthLengths[1] = 29;

    // Validate the date
    if (year >= 1800 && year <= 2999 && month >= 1 && month <= 12 && day >= 1 && day <= monthLengths[month - 1]) {
        printf("Date is correct [%02d/%02d/%02d].\n", day, month, year);

        // Calculate weekday
        if (month < 3) {
            month += 12;
            year -= 1;
        }
        wDayNo = (day + 2 * month + 3 * (month + 1) / 5 + year + year / 4 - year / 100 + year / 400) % 7;
        
        printf("week day is: %s\n", dayNames[wDayNo]);
    } else {
        printf("Date is incorrect.\n");
    }

    return 0;
}