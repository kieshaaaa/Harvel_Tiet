// even_odd_chec
#include <stdio.h>
#include "even_odd_checker.h"

// Function implementation
int isEven(int arr[],int size) {
	 for(int i = 0;i < size;i++){
		int var = arr[i] % 2;
		if(var == 0){
			arr[i] = arr[i] + 2;
		}
	}
    return 0;
}
