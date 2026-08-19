#include <stdio.h>

int main() {
    int number, searchDigit, count = 0;
    printf("\nEnter any number :: ");
    scanf("%d", &number);
    printf("\nEnter any digit to search :: ");
    scanf("%d", &searchDigit);

    int temp = number;
    do {
        if (temp % 10 == searchDigit) {
            count++;
        }
        temp /= 10;
    } while (temp > 0);

    printf("\nTotal occurrence of digit [ %d ] in Number [ %d ] is :: [ %d ].\n", searchDigit, number, count);
    return 0;
}