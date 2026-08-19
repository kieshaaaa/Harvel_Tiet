#include<stdio.h>
#include<stdlib.h>
int main()
{
    int number1, number2, flag, temp, i, j;
    int count  = 0 ;
    
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &number1, &number2);
    
    if(number2<2)
    {
        printf("There are no primes upto %d \n", number2);
    }
    printf("Prime Numbers are...\n");
    temp = number1;
    
    if(number1 % 2 == 0)
    {
        number1 = number1 + 1;
    }
    for(i=number1; i<=number2; i=i+2)
    {
        flag = 0;
        for(j=2; j<=i/2; j++)
        {
            if((i%j)==0)
            {
                flag = 1;
                break;
            }
        }
        if(flag == 0)
        {
            printf("%d \n", i);
            count = count + 1;
        }
    }
    printf("Number of primes between %d & %d = %d \n", temp, number2, count);
return 0;
}
