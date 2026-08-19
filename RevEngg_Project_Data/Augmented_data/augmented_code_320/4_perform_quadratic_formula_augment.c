/*Write a C program find the roots of a quadratic equation using the following formula. Use
appropriate library functions(math.h).*/

#include<stdio.h>
#include<math.h>
int main()
{
    int coeff_a, coeff_b, coeff_c, root1, root2;
    
    printf("Enter the value of a: \n");
    scanf("%d", &coeff_a);
    
    printf("Enter the value of b: \n");
    scanf("%d", &coeff_b);
    
    printf("Enter the value of c: \n");
    scanf("%d", &coeff_c);
    
    root1 = (-coeff_b + sqrt(coeff_b*coeff_b - 4*coeff_a*coeff_c))/(2*coeff_a);
    root2 = (-coeff_b - sqrt(coeff_b*coeff_b - 4*coeff_a*coeff_c))/(2*coeff_a);
    
    printf("The value of root1 is: %d \n", root1);
    printf("The value of root2 is: %d \n", root2);
}