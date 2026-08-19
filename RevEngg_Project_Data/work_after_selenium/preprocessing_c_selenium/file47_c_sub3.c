#include <stdio.h>

int entry_point(char (*gender)) {
;
 (*gender) = ((*gender) >= 'A' && (*gender) <= 'Z') ? (*gender) + 32 : (*gender);
 if ((*gender) == 'm') {
;
 } else if ((*gender) == 'f') {
;
 } else {
;
 }
;
 return 0;
}
