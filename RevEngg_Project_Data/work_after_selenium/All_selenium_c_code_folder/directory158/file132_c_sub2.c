#include<stdio.h>

int main() {
    int num, start, end, i;
    printf("Enter an integer: ");
    scanf("%d", &num);
    printf("Enter start of range: ");
    scanf("%d", &start);
    printf("Enter end of range: ");
    scanf("%d", &end);
    
    if(start <= end) {
        for(i = start; i <= end; i++) {
            int result = num * i;
            printf("%d * %d = %d\n", num, i, result);
        }
    } else {
        for(i = start; i >= end; i--) {
            int result = num * i;
            printf("%d * %d = %d\n", num, i, result);
        }
    }
    return 0;
}