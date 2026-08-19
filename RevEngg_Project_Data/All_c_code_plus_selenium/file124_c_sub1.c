#include <stdio.h>

int main() {
    int number, searchDigit, count = 0;
    printf("\nEnter any number :: ");
    scanf("%d", &number);
    printf("\nEnter any digit to search :: ");
    scanf("%d", &searchDigit);

    for (int temp = number; temp > 0; temp /= 10) {
        if (temp % 10 == searchDigit) {
            count++;
        }
    }

    printf("\nTotal occurrence of digit [ %d ] in Number [ %d ] is :: [ %d ].\n", searchDigit, number, count);
    return 0;
}