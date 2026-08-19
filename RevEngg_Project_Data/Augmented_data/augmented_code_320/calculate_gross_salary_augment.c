#include <stdio.h>
int main()
{
     float basic_salary, house_rent_allowance, dearness_allowance, conveyance_allowance, gross_salary;
     printf("Enter Basic Salary : ");
     scanf("%f", &basic_salary);

     if(basic_salary >= 5000)
     {
          dearness_allowance = 110 * basic_salary / 100;
          house_rent_allowance = 20 * basic_salary / 100;
          conveyance_allowance = 500;
     }
     else if(basic_salary >= 3000 && basic_salary < 5000)
     {
          dearness_allowance = 100 * basic_salary / 100;
          house_rent_allowance = 15 * basic_salary / 100;
          conveyance_allowance = 400;
     }
     else if( basic_salary < 3000)
     {
          dearness_allowance = 90 * basic_salary / 100;
          house_rent_allowance = 10 * basic_salary / 100;
          conveyance_allowance = 300;
     }
     gross_salary = basic_salary + dearness_allowance + house_rent_allowance + conveyance_allowance;
     printf("Basic Salary   : %f \n",basic_salary);
     printf("DA             : %f \n",dearness_allowance);
     printf("HRA            : %f \n",house_rent_allowance);
     printf("Conveyance     : %f \n",conveyance_allowance);
     printf("Gross Salary   : %f \n",gross_salary);
     return 0;
}