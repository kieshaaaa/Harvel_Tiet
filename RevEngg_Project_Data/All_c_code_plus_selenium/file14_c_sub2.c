#include <stdio.h>

int main() {
    int count, array[100], temp, maxDigit = 0, divFactor = 1, flag;
    printf("Enter size of array: ");
    scanf("%d", &count);
    printf("Enter elements into array: ");
    for (int i = 0; i < count; i++) {
        scanf("%d", &array[i]);
        for (int t = array[i], digits = 0; t > 0; digits++, t /= 10)
            if (digits > maxDigit) maxDigit = digits;
    }

    for (int digit = 0; digit < maxDigit; digit++, divFactor *= 10) {
        do {
            flag = 0;
            for (int i = 0; i < count - 1; i++) {
                if ((array[i] / divFactor) % 10 > (array[i + 1] / divFactor) % 10) {
                    temp = array[i];
                    array[i] = array[i + 1];
                    array[i + 1] = temp;
                    flag = 1;
                }
            }
        } while (flag);
    }

    printf("\nSorted Array: ");
    for (int i = 0; i < count; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
    return 0;
}