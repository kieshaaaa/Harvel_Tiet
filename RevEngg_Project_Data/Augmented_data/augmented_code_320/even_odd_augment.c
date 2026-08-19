// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{
    int number;
    int evenNum, oddNum;
    printf("\nEnter a number to check whether it is Even or Odd => ");
    scanf("%d", &number);

     if (number / 2.0 - number / 2 == 0)
     {
        evenNum = number + 2;
        printf("\n %d is Even", evenNum);
     }
     else
     {
        oddNum = number + 1;
        printf("\n %d is Odd", oddNum);
     }
    


    return 0;
}
// // Main Function End