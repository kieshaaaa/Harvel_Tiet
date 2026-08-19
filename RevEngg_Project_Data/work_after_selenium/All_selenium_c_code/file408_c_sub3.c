#include <stdio.h>

int main() {
    int day, month, year;
    printf("Input date (DD-MM-YYYY): ");
    scanf("%d-%d-%d", &day, &month, &year);

    // Validate and calculate in one go
    if ((year >= 1800 && year <= 2999) &&
        (month >= 1 && month <= 12) &&
        (day >= 1 && (((month == 4 || month == 6 || month == 9 || month == 11) && day <= 30) ||
                      (month != 2 && day <= 31) ||
                      (month == 2 && day <= 28 + ((year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)) ? 1 : 0))))) {
        printf("Date is correct [%02d/%02d/%02d].\n", day, month, year);
        
        // Inline weekday calculation
        char *dayNames[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        if (month < 3) {
            month += 12;
            year -= 1;
        }
        int wDayNo = (day + 2 * month + 3 * (month + 1) / 5 + year + year / 4 - year / 100 + year / 400) % 7;
        printf("week day is: %s\n", dayNames[wDayNo]);
    } else {
        printf("Date is incorrect.\n");
    }

    return 0;
}