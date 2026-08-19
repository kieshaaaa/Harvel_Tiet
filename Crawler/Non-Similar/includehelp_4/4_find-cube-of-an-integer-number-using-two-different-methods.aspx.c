/* Source: https://www.includehelp.com/c-programs/find-cube-of-an-integer-number-using-two-different-methods.aspx */
#include <stdio.h>

int  main()
{

    int a,cube;
    
    printf("Enter any integer number: ");
    scanf("%d",&a);
    //calculating cube
    cube = (a*a*a);
    printf("CUBE is: %d\n",cube);
    
    return 0;
}
