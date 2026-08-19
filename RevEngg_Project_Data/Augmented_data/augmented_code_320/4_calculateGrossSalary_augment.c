#include <stdio.h>
int main()
{
     float basicSalary, houseRentAllowance, dearnessAllowance, conveyance, grossSalary;
     printf("Enter Basic Salary : ");
     scanf("%f", &basicSalary);

     if(basicSalary >= 5000)
     {
          dearnessAllowance = 110 * basicSalary / 100;
          houseRentAllowance = 20 * basicSalary / 100;
          conveyance = 500;
     }
     else if(basicSalary >= 3000 && basicSalary < 5000)
     {
          dearnessAllowance = 100 * basicSalary / 100;
          houseRentAllowance = 15 * basicSalary / 100;
          conveyance = 400;
     }
     else if( basicSalary < 3000)
     {
          dearnessAllowance = 90 * basicSalary / 100;
          houseRentAllowance = 10 * basicSalary / 100;
          conveyance = 300;
     }
     grossSalary = basicSalary + dearnessAllowance + houseRentAllowance + conveyance;
     printf("Basic Salary   : %.f \n",basicSalary);
     printf("DA             : %.f \n",dearnessAllowance);
     printf("HRA            : %.f \n",houseRentAllowance);
     printf("Conveyance     : %.f \n",conveyance);
     printf("Gross Salary   : %.f \n",grossSalary);
     return 0;
}