#include <stdio.h>

int main() {
    int count, array[100], temp, maxDigit = 0, divFactor = 1;
    printf("Enter size of array: ");
    scanf("%d", &count);
    printf("Enter elements into array: ");
    for (int i = 0; i < count; i++) {
        scanf("%d", &array[i]);
        int digitCount = 0, n = array[i];
        while(n > 0) {
            n /= 10;
            digitCount++;
        }
        if(digitCount > maxDigit) maxDigit = digitCount;
    }

    for(int digit = 0; digit < maxDigit; digit++, divFactor *= 10) {
        for(int i = 0; i < count - 1; i++) {
            for(int j = 0; j < count - i - 1; j++) {
                if((array[j] / divFactor) % 10 > (array[j+1] / divFactor) % 10) {
                    temp = array[j];
                    array[j] = array[j+1];
                    array[j+1] = temp;
                }
            }
        }
    }

    printf("\nSorted Array: ");
    for(int i = 0; i < count; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
    return 0;
}