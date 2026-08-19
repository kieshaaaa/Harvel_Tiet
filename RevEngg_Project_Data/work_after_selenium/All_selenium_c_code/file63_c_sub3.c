#include <stdio.h>

int main() {
    for(int i = 1; i <= 4; i++) {
        switch(i) {
            case 1: 
                putchar('A'); 
                break;
            case 2: 
                putchar('B'); 
                break;
            case 3: 
                putchar('C'); 
                break;
            case 4: 
                putchar('D'); 
                break;
        }
        putchar('\n');
    }

    return 0;
}