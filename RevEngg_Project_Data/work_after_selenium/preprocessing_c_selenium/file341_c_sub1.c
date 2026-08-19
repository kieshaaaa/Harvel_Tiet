#include <stdio.h>

char buff[3][50] = {"Hello function", "How are you?", "Catch some strings"};
void Strfun(int count) {
 int i;
 for(i = 0; i < count; i++) {
;
 puts(buff[i]);
 }
}
int entry_point() {
 Strfun(3);
 return 0;
}
