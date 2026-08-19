#include<stdio.h>
#include<string.h>

int entry_point(char (*user), int (*input)) {
int password = 1234;
int authFlag = 0;
char username[] = "user123";
;
;
 if((strcmp((*user), username) == 0) && ((*input) == password)) {
 authFlag = 1;
 }
 if(authFlag == 1) {
;
 } else {
;
 }
 return 0;
}
