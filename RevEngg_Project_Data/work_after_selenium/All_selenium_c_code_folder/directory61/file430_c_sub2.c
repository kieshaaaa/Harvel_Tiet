#include <stdio.h>

int main() {
    int dd, mm, yy;
    int isValidDate = 0;

    printf("Enter date (DD/MM/YYYY format): ");
    scanf("%d/%d/%d", &dd, &mm, &yy);

    if (yy >= 1900 && yy <= 9999) {
        switch (mm) {
            case 1: case 3: case 5: case 7: case 8: case 10: case 12:
                isValidDate = dd >= 1 && dd <= 31;
                break;
            case 4: case 6: case 9: case 11:
                isValidDate = dd >= 1 && dd <= 30;
                break;
            case 2:
                isValidDate = (dd >= 1 && dd <= 28) || (dd == 29 && (yy % 400 == 0 || (yy % 4 == 0 && yy % 100 != 0)));
                break;
            default:
                isValidDate = 0;
        }
    }

    if (isValidDate) {
        printf("Date is valid.\n");
    } else {
        printf("Date is not valid.\n");
    }

    return 0;
}