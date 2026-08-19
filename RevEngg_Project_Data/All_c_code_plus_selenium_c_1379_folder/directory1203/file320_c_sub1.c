#include<stdio.h>

int main() {
    int num;
    printf("Enter any number :: ");
    scanf("%d", &num);

    // Handling 0 explicitly
    if (num == 0) {
        printf("zero ");
        return 0;
    }

    int reverse = 0;
    // Reverse the number to print in correct order
    while (num != 0) {
        reverse = reverse * 10 + (num % 10);
        num /= 10;
    }

    while (reverse != 0) {
        int digit = reverse % 10;
        switch (digit) {
            case 0: printf("zero "); break;
            case 1: printf("one "); break;
            case 2: printf("two "); break;
            case 3: printf("three "); break;
            case 4: printf("four "); break;
            case 5: printf("five "); break;
            case 6: printf("six "); break;
            case 7: printf("seven "); break;
            case 8: printf("eight "); break;
            case 9: printf("nine "); break;
        }
        reverse /= 10;
    }

    return 0;
}