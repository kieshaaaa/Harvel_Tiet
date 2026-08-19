// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{
    int num;
    int odd,even;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

    
    
     if (num / 2 * 2 == num)
     { 
        even = num + 2;
        printf("\n%d is Even", num);
     }
     else
     {
        odd = num + 1;
        printf("\n%d is Odd", num);
     }
    return 0;
}
// // Main Function End
