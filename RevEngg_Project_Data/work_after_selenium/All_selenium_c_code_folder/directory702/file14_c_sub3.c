#include <stdio.h>

int main() {
    int count, array[100], temp, maxDigit = 1, divFactor;
    printf("Enter size of array: ");
    scanf("%d", &count);
    printf("Enter elements into array: ");
    for (int i = 0; i < count; i++) {
        scanf("%d", &array[i]);
        for (int t = array[i]; t > 0; maxDigit = maxDigit * (t % 10 > 0 ? 10 : 1), t /= 10);
    }

    for (divFactor = maxDigit / 10; divFactor >= 1; divFactor /= 10) {
        for (int i = 0; i < count; i++) {
            for (int j = i + 1; j < count; j++) {
                if ((array[i] / divFactor) % 10 > (array[j] / divFactor) % 10) {
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                }
            }
        }
    }

    printf("\nSorted Array: ");
    for (int i = 0; i < count; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
    return 0;
}