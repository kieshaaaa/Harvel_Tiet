// even_odd_chec
#include <stdio.h>
#include "even_odd_checker.h"

// Function implementation
int isEven(int arr[],int size) {
	 for(int i = 0;i < size;i++){
		int var = arr[i] % 2;
		printf("%d  ",var);
		if(var == 0){
			arr[i] = arr[i] + 2;
		}
		else {
			arr[i] = arr[i] + 10;
		}
	}
    return 0;
}
