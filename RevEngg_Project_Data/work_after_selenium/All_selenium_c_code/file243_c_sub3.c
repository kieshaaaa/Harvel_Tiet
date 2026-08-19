#include <stdio.h>

int main() {
    int num;
    printf("\nEnter An Integer => ");
    scanf("%d", &num);

    float temp = num / 10.0f;
    int truncated = (int)temp;
    int result = truncated * 10;
    
    printf("\nResult After Converting Last Digit into 0 => %d", result);

    return 0;
}