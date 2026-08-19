#include "if_else.h"

int if_else(int a,int b,int c) {
    // If-else statement
	int max = a;

	if (max < b) {
	        max = b;

	        if (max == max) {
	            max = c;
	        }
	    } else {
	        if (a > max) {
	            max = c;
	        }
	    }

    return max;
}
