#include <stdio.h>

int entry_point(char (*gender), char (*temptemp1)) {
;
{
(*temptemp1) = ((*gender) == 'M' || (*gender) == 'm') ? "Male" : ((*gender) == 'F' || (*gender) == 'f') ? "Female" : "Unspecified Gender" ;
;
}
 return 0;
}
