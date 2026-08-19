#include <stdio.h>

int main() {
    int nums[4], sum = 0;
    printf("\nEnter Four Numbers: ");
    scanf("%d %d %d %d", &nums[0], &nums[1], &nums[2], &nums[3]);
    
    for(int i = 0; i < 4; i++) {
        sum += nums[i];
    }

    printf("\nSum of 4 numbers is %d\n", sum);
    return 0;
}