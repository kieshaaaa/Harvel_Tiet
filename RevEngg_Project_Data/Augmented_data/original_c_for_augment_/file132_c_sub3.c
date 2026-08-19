#include<stdio.h>

int main() {
    int num, range, i = 1;
    printf("Enter an integer: ");
    scanf("%d", &num);
    printf("Enter the range: ");
    scanf("%d", &range);
    
    do {
        int multiplication = num * i;
        printf("%d * %d = %d\n", num, i, multiplication);
        i++;
    } while(i <= range);
    
    return 0;
}