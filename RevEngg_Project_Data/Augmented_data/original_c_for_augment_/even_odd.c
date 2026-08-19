// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{
    int num;
    int even,odd;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &num);

     if (num / 2.0 - num / 2 == 0)
     {
        even = num + 2;

        printf("\n %d is Even", even);
     }
     else
     {
        odd = num + 1;
        printf("\n %d is Odd", odd);
     }
    


    return 0;
}
// // Main Function End
