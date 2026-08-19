#include <stdio.h>

int main() {
    int num, digitToFind, occurrences = 0;
    printf("\nEnter any number :: ");
    scanf("%d", &num);
    printf("\nEnter any digit to search :: ");
    scanf("%d", &digitToFind);

    int temp = num;
    while (temp > 0) {
        if (temp % 10 == digitToFind) {
            occurrences++;
        }
        temp /= 10;
    }

    printf("\nTotal occurrence of digit [ %d ] in Number [ %d ] is :: [ %d ].\n", digitToFind, num, occurrences);
    return 0;
}