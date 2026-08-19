int entry_point ( char employeeName , float basicSalary , float ( *temptemp1 ) , float ( *temptemp2 ) )   {
  float providentFund ;
  float houseRentAllowance ;
  float dearnessAllowance ;
  float grossSalary ;
  float netSalary ;

  providentFund = basicSalary * 0.15f ;
  dearnessAllowance = basicSalary * 0.10f ;

  if  ( basicSalary < 150000.0f )   {
    houseRentAllowance = basicSalary * 0.4f ;
  }  else  {
    houseRentAllowance = basicSalary * 0.3f ;
  }

  grossSalary = basicSalary + dearnessAllowance + houseRentAllowance ;
  netSalary = grossSalary - providentFund ;

   {
     ( *temptemp1 ) = grossSalary ;
     ;
   }
   {
     ( *temptemp2 ) = netSalary ;
     ;
   }

  return 0 ;
 }