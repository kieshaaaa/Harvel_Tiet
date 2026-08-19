#include <stdio.h>

int main() {
    int number1, number2, count = 0;
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &number1, &number2);

    if(number1 <= 2) {
        printf("2\n");
        number1 = 3;
        count++;
    }
    if(number1 % 2 == 0) number1++;

    for(int i = number1; i <= number2; i += 2) {
        int flag = 0;
        for(int j = 3; j*j <= i; j += 2) {
            if(i % j == 0) {
                flag = 1;
                break;
            }
        }
        if(!flag) {
            printf("%d\n", i);
            count++;
        }
    }

    printf("Number of primes between %d & %d = %d\n", number1, number2, count);
    return 0;
}