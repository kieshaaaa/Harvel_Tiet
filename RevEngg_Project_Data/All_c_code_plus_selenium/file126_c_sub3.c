#include <stdio.h>

int main() {
    int num, digit, count = 0;
    printf("Enter a number: ");
    scanf("%d", &num);
    printf("Enter digit to search: ");
    scanf("%d", &digit);

    for (int tNum = num; tNum > 0; tNum /= 10) {
        if (tNum % 10 == digit) {
            count++;
        }
    }

    printf("Total occurrence of digit is: %d", count);
    printf(" in number: %d.", num);
    return 0;
}