#include <stdio.h>


// // Main Function Start
int main()
{
    int num;
    int even;
    int odd;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    // // 1st Approach (using & Bitwise AND)
    if (num & 1)
    {
        odd = num + 1;
        printf("\n%d is Odd", odd);
    }
    else
    {
        even = num + 2;
        printf("\n%d is Even", even);
    }
    
    printf("\n");

    return 0;
}
