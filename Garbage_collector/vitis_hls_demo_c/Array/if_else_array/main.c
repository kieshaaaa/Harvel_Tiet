// main.c

#include <stdio.h>
#include "even_odd_checker.h"

int main() {
    int size= 5;

    int arr[5] = {4,5,6,7,8};

    int evenCount = isEven(arr);

    for(int k = 0;k < size;k++) {
    	printf("%d ",arr[k]);
    }

    return 0;
}
