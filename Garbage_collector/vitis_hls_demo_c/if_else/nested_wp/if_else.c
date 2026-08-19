#include "if_else.h"

int if_else() {
    // If-else statement
	int a = 3;
	int b =7;
	int c = 8;
	int max = a;

	if (b > max) {
        if (c > b) {
            max = c;
        } else {
            max = b;
        }
    } else {
       if (c > max) {
            max = c;
        }
    }

    return max;
}
