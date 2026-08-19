#include <stdio.h>

int main() {
    int num, i;
    int binary[32] = {0}; 

    printf("Enter decimal number: ");
    scanf("%d", &num);

    i = 0;
    while (i < 32) {
        binary[i] = (num >> i) & 1;
        i++;
    }

    printf("Binary value is: ");
    int startPrint = 0;
    i = 31;
    while (i >= 0) {
        if (binary[i] == 1)
            startPrint = 1;
        if (startPrint)
            printf("%d", binary[i]);
        i--;
    }
    if (num == 0) printf("0");
    printf("\n");
    
    return 0;
}