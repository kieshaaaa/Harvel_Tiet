#include <stdio.h>

int main() {
    int num, count = 0, j = 1, oddNum = 0;
    
    printf("Enter num to find the nth odd number: ");
    scanf("%d", &num);
    
    for( ; count < num; j++) {
        if(j % 2 != 0) {
            oddNum = j;
            count++;
        }
    }
    
    printf("The ");
    printf("%d", num);
    printf("th odd number is: ");
    printf("%d\n", oddNum);
    
    return 0;
}