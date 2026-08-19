#include <stdio.h>

int main() {
    int day, month, year, wDayNo;
    char *dayNames[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

    printf("Input date (DD-MM-YYYY): ");
    scanf("%d-%d-%d", &day, &month, &year);

    // Simple leap year check
    int isLeap = year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
    // Validate the date
    int isValid = day > 0 && month > 0 && month < 13 && year >= 1800 && year <= 2999 &&
                  ((month == 2 && isLeap && day <= 29) || (month == 2 && !isLeap && day <= 28) ||
                   ((month == 4 || month == 6 || month == 9 || month == 11) && day <= 30) ||
                   (day <= 31));

    if (isValid) {
        printf("Date is correct [%02d/%02d/%02d].\n", day, month, year);

        // Simplified weekday calculation
        if (month < 3) {
            month += 12;
            year--;
        }
        wDayNo = (day + (13 * (month + 1) / 5) + year + (year / 4) - (year / 100) + (year / 400)) % 7;
        
        printf("week day is: %s\n", dayNames[wDayNo]);
    } else {
        printf("Date is incorrect.\n");
    }

    return 0;
}