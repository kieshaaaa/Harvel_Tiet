#include<stdio.h>

int main() {
    int num, range, i = 1;
    printf("Enter an integer: ");
    scanf("%d", &num);
    printf("Enter the range: ");
    scanf("%d", &range);
    
    while(i <= range) {
        int product = num * i;
        printf("%d * %d = %d\n", num, i, product);
        i++;
    }
    return 0;
}