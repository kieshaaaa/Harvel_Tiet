#include <stdio.h>

int main() {
    int num, digit, count = 0, flag = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    printf("Enter digit to search: ");
    scanf("%d", &digit);

    for (int tNum = num; tNum > 0; tNum /= 10) {
        if (tNum % 10 == digit) {
            count++;
            flag = 1;
        }
    }

    if (flag == 0) {
        printf("Digit ");
        printf("%d", digit);
        printf(" not found in number: ");
        printf("%d", num);
        printf(".");
    } else {
        printf("Total occurrence of digit is: ");
        printf("%d", count);
        printf(" in number: ");
        printf("%d", num);
        printf(".");
    }
    return 0;
}