#include <stdio.h>

int main() {
    int dd, mm, yy;
    int isLeapYear = 0;
    int isValidDate = 0;

    printf("Enter date (DD/MM/YYYY format): ");
    scanf("%d/%d/%d", &dd, &mm, &yy);

    if (yy >= 1900 && yy <= 9999) {
        if (mm >= 1 && mm <= 12) {
            if (mm == 2) {
                isLeapYear = yy % 400 == 0 || (yy % 4 == 0 && yy % 100 != 0);
                if (dd >= 1 && ((dd <= 28) || (dd == 29 && isLeapYear))) {
                    isValidDate = 1;
                }
            } else if (mm == 4 || mm == 6 || mm == 9 || mm == 11) {
                if (dd >= 1 && dd <= 30) {
                    isValidDate = 1;
                }
            } else if (dd >= 1 && dd <= 31) {
                isValidDate = 1;
            }
        }
    }

    if (isValidDate) {
        printf("Date is valid.\n");
    } else {
        printf("Date is not valid.\n");
    }

    return 0;
}