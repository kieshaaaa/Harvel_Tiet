/* Source: https://www.includehelp.com/c-programs/print-the-current-function-name-by-using__func__in-c.aspx */
#include <stdio.h>

//fun1
void fun1(void){
	printf("Called function is: %s\n",__func__);
}

//fun2
void fun2(void){
	printf("Called function is: %s\n",__func__);
}

//Main code
int main(){
	
	printf("Called function is: %s\n",__func__);
	//function callings
	printf("Now,calling the functions...\n");
	fun1();
	fun2();
	
	return 0;	
}
