// even_odd_checker.c
#include <stdio.h>
#include "even_odd_checker.h"

// Function implementation
int isEven(int arr[]) {
	    int i = 1;
	    int j = 2;
        if (arr[i] % 2 == 0) {
            arr[i] = arr[i] + 2;
            printf("%d ",arr[i]);
        }
	    else {
            arr[i] = arr[i] + 2;
            printf("%d ",arr[i]);
        }
        if (arr[j] % 2 == 0) {
            arr[j] = arr[j] + 2;
            printf("%d ",arr[j]);
        }
        else {
             arr[j] = arr[j] + 2;
             printf("%d ",arr[j]);
        }
    return 0;
}
